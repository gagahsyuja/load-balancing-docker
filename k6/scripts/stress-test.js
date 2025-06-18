import http from "k6/http";
import { check, sleep } from "k6";

export let options = {
    vus: 50,
    duration: '5m'
    // stages: [
    //     // Ramp-up from 1 to 30 VUs in 30s
    //     { duration: "30s", target: 30 },
    //
    //     // Stay on 30 VUs for 60s
    //     { duration: "60s", target: 30 },
    //
    //     // Ramp-down from 30 to 0 VUs in 10s
    //     { duration: "10s", target: 0 }
    // ]
};

export default function () {
    const url = "http://load_balancer:8888/items/"
    const endpoint = ["Users", "Posts", "Comments", "Votes", "Badges"]

    const params = {
        headers: {
            Authorization: "Bearer CUuaxLbnkBkI2dfDhn1NyFRGmNFo6i3c"
        }
    };

    for (const element of endpoint) {
        let completeUrl = `${url}${element}`;
        let res = http.get(completeUrl, params);

        check(res, {
            "status is 200": (r) => r.status === 200
        });

        sleep(1)
    }
}

