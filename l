{"addrs":["0.0.0.0:8181"],"diagnostic-addrs":[],"level":"info","msg":"Initializing server.","time":"2024-04-22T12:15:07Z"}
{"level":"debug","msg":"Failed to determine uid/gid of process owner","time":"2024-04-22T12:15:07Z"}
{"level":"debug","msg":"maxprocs: Leaving GOMAXPROCS=8: CPU quota undefined","time":"2024-04-22T12:15:07Z"}
{"level":"info","msg":"Starting bundle loader.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:07Z"}
{"level":"info","msg":"Starting bundle loader.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:07Z"}
{"level":"info","msg":"Starting bundle loader.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/json"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"POST","msg":"Sending request.","time":"2024-04-22T12:15:07Z","url":"https://telemetry.openpolicyagent.org/v1/version"}
{"level":"debug","msg":"Server initialized.","time":"2024-04-22T12:15:07Z"}
{"err":"Post \"https://telemetry.openpolicyagent.org/v1/version\": context deadline exceeded","level":"debug","msg":"Unable to send OPA version report.","time":"2024-04-22T12:15:12Z"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp: lookup it-odrl-pap on 10.43.0.10:53: no such host","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 0s before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp: lookup it-odrl-pap on 10.43.0.10:53: no such host","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Waiting 0s before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz\": dial tcp: lookup it-odrl-pap on 10.43.0.10:53: no such host","name":"data","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 0s before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 176.998255ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 135.49083ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"data","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 156.772769ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 248.024131ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"data","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 287.845236ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Waiting 234.235766ms before next download/retry.","time":"2024-04-22T12:15:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:13Z"}
{"level":"debug","msg":"Waiting 444.562342ms before next download/retry.","time":"2024-04-22T12:15:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:14Z"}
{"level":"debug","msg":"Waiting 468.21718ms before next download/retry.","time":"2024-04-22T12:15:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"data","plugin":"bundle","time":"2024-04-22T12:15:15Z"}
{"level":"debug","msg":"Waiting 445.312521ms before next download/retry.","time":"2024-04-22T12:15:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:17Z"}
{"level":"debug","msg":"Waiting 747.592764ms before next download/retry.","time":"2024-04-22T12:15:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:17Z"}
{"level":"debug","msg":"Waiting 1.247302452s before next download/retry.","time":"2024-04-22T12:15:17Z"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"data","plugin":"bundle","time":"2024-04-22T12:15:18Z"}
{"level":"debug","msg":"Waiting 670.889585ms before next download/retry.","time":"2024-04-22T12:15:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:19Z"}
{"level":"debug","msg":"Waiting 630.410633ms before next download/retry.","time":"2024-04-22T12:15:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"error","msg":"Bundle load failed: request failed: Get \"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz\": dial tcp 10.43.238.49:8080: connect: connection refused","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:20Z"}
{"level":"debug","msg":"Waiting 947.638032ms before next download/retry.","time":"2024-04-22T12:15:20Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Opened storage transaction (6).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Closing storage transaction (6).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Waiting 1.732890273s before next download/retry.","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Opened storage transaction (7).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Closing storage transaction (7).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:21Z"}
{"level":"debug","msg":"Waiting 3.723990696s before next download/retry.","time":"2024-04-22T12:15:21Z"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Opened storage transaction (8).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Closing storage transaction (8).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Waiting 5.818382615s before next download/retry.","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Opened storage transaction (9).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Closing storage transaction (9).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Waiting 1.181365996s before next download/retry.","time":"2024-04-22T12:15:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Opened storage transaction (10).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Closing storage transaction (10).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Waiting 1.333459354s before next download/retry.","time":"2024-04-22T12:15:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Opened storage transaction (11).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Closing storage transaction (11).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Waiting 1.639847594s before next download/retry.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Opened storage transaction (12).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Closing storage transaction (12).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Waiting 2.608681854s before next download/retry.","time":"2024-04-22T12:15:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Opened storage transaction (13).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Closing storage transaction (13).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Waiting 2.426453596s before next download/retry.","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Opened storage transaction (14).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Closing storage transaction (14).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Waiting 2.368461735s before next download/retry.","time":"2024-04-22T12:15:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Opened storage transaction (15).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Closing storage transaction (15).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Waiting 2.257341307s before next download/retry.","time":"2024-04-22T12:15:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Opened storage transaction (16).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Closing storage transaction (16).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Waiting 2.142784248s before next download/retry.","time":"2024-04-22T12:15:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Opened storage transaction (17).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Closing storage transaction (17).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Waiting 6.350376141s before next download/retry.","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Opened storage transaction (18).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Closing storage transaction (18).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Waiting 3.642212206s before next download/retry.","time":"2024-04-22T12:15:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Opened storage transaction (19).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Closing storage transaction (19).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Waiting 2.244808567s before next download/retry.","time":"2024-04-22T12:15:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Opened storage transaction (20).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Closing storage transaction (20).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Waiting 1.269815338s before next download/retry.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Opened storage transaction (21).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Closing storage transaction (21).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Waiting 2.101798756s before next download/retry.","time":"2024-04-22T12:15:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Opened storage transaction (22).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Closing storage transaction (22).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Waiting 1.574741687s before next download/retry.","time":"2024-04-22T12:15:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Opened storage transaction (23).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Closing storage transaction (23).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Waiting 3.19422227s before next download/retry.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Opened storage transaction (24).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Closing storage transaction (24).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Waiting 14.580844854s before next download/retry.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Opened storage transaction (25).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Closing storage transaction (25).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Waiting 2.351918757s before next download/retry.","time":"2024-04-22T12:15:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Opened storage transaction (26).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Closing storage transaction (26).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Waiting 1.798267584s before next download/retry.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Opened storage transaction (27).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Closing storage transaction (27).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Waiting 2.571065843s before next download/retry.","time":"2024-04-22T12:15:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Opened storage transaction (28).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Closing storage transaction (28).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Waiting 2.452215631s before next download/retry.","time":"2024-04-22T12:15:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Opened storage transaction (29).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Closing storage transaction (29).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:42Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Waiting 2.031713541s before next download/retry.","time":"2024-04-22T12:15:42Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Opened storage transaction (30).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Closing storage transaction (30).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Waiting 2.803209752s before next download/retry.","time":"2024-04-22T12:15:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Opened storage transaction (31).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Closing storage transaction (31).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Waiting 2.782714096s before next download/retry.","time":"2024-04-22T12:15:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Opened storage transaction (32).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Closing storage transaction (32).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Waiting 2.751559695s before next download/retry.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Opened storage transaction (33).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Closing storage transaction (33).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Waiting 3.693380527s before next download/retry.","time":"2024-04-22T12:15:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Opened storage transaction (34).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Closing storage transaction (34).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Waiting 1.933749855s before next download/retry.","time":"2024-04-22T12:15:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Opened storage transaction (35).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Closing storage transaction (35).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Waiting 2.28694414s before next download/retry.","time":"2024-04-22T12:15:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Opened storage transaction (36).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Closing storage transaction (36).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Waiting 1.372956521s before next download/retry.","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Opened storage transaction (37).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Closing storage transaction (37).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Waiting 6.68848225s before next download/retry.","time":"2024-04-22T12:15:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Opened storage transaction (38).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Closing storage transaction (38).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Waiting 1.697219732s before next download/retry.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Opened storage transaction (39).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Closing storage transaction (39).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Waiting 3.606431004s before next download/retry.","time":"2024-04-22T12:15:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Opened storage transaction (40).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Closing storage transaction (40).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Waiting 2.551528814s before next download/retry.","time":"2024-04-22T12:15:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Opened storage transaction (41).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Closing storage transaction (41).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Waiting 2.119636102s before next download/retry.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Opened storage transaction (42).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Closing storage transaction (42).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Waiting 2.563436954s before next download/retry.","time":"2024-04-22T12:15:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:57Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:57Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:57Z"}
{"level":"debug","msg":"Opened storage transaction (43).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:57Z"}
{"level":"debug","msg":"Closing storage transaction (43).","name":"data","plugin":"bundle","time":"2024-04-22T12:15:57Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:15:57Z"}
{"level":"debug","msg":"Waiting 13.80762859s before next download/retry.","time":"2024-04-22T12:15:57Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Opened storage transaction (44).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Closing storage transaction (44).","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Waiting 3.810674587s before next download/retry.","time":"2024-04-22T12:15:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:15:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:15:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:15:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Opened storage transaction (45).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Closing storage transaction (45).","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Waiting 2.690191561s before next download/retry.","time":"2024-04-22T12:15:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Opened storage transaction (46).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Closing storage transaction (46).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Waiting 2.923116935s before next download/retry.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Opened storage transaction (47).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Closing storage transaction (47).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Waiting 2.857568441s before next download/retry.","time":"2024-04-22T12:16:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Opened storage transaction (48).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Closing storage transaction (48).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Waiting 1.072823026s before next download/retry.","time":"2024-04-22T12:16:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Opened storage transaction (49).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Closing storage transaction (49).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Waiting 3.941835846s before next download/retry.","time":"2024-04-22T12:16:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Opened storage transaction (50).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Closing storage transaction (50).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Waiting 1.401892597s before next download/retry.","time":"2024-04-22T12:16:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Opened storage transaction (51).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Closing storage transaction (51).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Waiting 1.3947453s before next download/retry.","time":"2024-04-22T12:16:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Opened storage transaction (52).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Closing storage transaction (52).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Waiting 1.384950353s before next download/retry.","time":"2024-04-22T12:16:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:09Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Opened storage transaction (53).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Closing storage transaction (53).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:09Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Waiting 2.789178018s before next download/retry.","time":"2024-04-22T12:16:09Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Opened storage transaction (54).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Closing storage transaction (54).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Waiting 1.795370556s before next download/retry.","time":"2024-04-22T12:16:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:11Z"}
{"level":"debug","msg":"Opened storage transaction (55).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:11Z"}
{"level":"debug","msg":"Closing storage transaction (55).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:11Z"}
{"level":"debug","msg":"Waiting 14.814658736s before next download/retry.","time":"2024-04-22T12:16:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Opened storage transaction (56).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Closing storage transaction (56).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Waiting 1.823399793s before next download/retry.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Opened storage transaction (57).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Closing storage transaction (57).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Waiting 2.348150758s before next download/retry.","time":"2024-04-22T12:16:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Opened storage transaction (58).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Closing storage transaction (58).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Waiting 1.0713805s before next download/retry.","time":"2024-04-22T12:16:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Opened storage transaction (59).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Closing storage transaction (59).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Waiting 2.753727476s before next download/retry.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Opened storage transaction (60).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Closing storage transaction (60).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Waiting 1.378554561s before next download/retry.","time":"2024-04-22T12:16:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Opened storage transaction (61).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Closing storage transaction (61).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Waiting 2.227157284s before next download/retry.","time":"2024-04-22T12:16:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Opened storage transaction (62).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Closing storage transaction (62).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Waiting 2.039702086s before next download/retry.","time":"2024-04-22T12:16:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Opened storage transaction (63).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Closing storage transaction (63).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Waiting 2.449964905s before next download/retry.","time":"2024-04-22T12:16:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Opened storage transaction (64).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Closing storage transaction (64).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Waiting 2.844801556s before next download/retry.","time":"2024-04-22T12:16:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Opened storage transaction (65).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Closing storage transaction (65).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Waiting 2.212167908s before next download/retry.","time":"2024-04-22T12:16:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Opened storage transaction (66).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Closing storage transaction (66).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Waiting 2.009370674s before next download/retry.","time":"2024-04-22T12:16:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Opened storage transaction (67).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Closing storage transaction (67).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Waiting 1.487541168s before next download/retry.","time":"2024-04-22T12:16:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Opened storage transaction (68).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Closing storage transaction (68).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Waiting 2.6740624s before next download/retry.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Opened storage transaction (69).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Closing storage transaction (69).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Waiting 2.230436318s before next download/retry.","time":"2024-04-22T12:16:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Opened storage transaction (70).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Closing storage transaction (70).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Waiting 2.239982431s before next download/retry.","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Opened storage transaction (71).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Closing storage transaction (71).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Waiting 3.886824038s before next download/retry.","time":"2024-04-22T12:16:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Opened storage transaction (72).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Closing storage transaction (72).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Waiting 1.549357775s before next download/retry.","time":"2024-04-22T12:16:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Opened storage transaction (73).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Closing storage transaction (73).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Waiting 1.448187726s before next download/retry.","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Opened storage transaction (74).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Closing storage transaction (74).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Waiting 10.58804808s before next download/retry.","time":"2024-04-22T12:16:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Opened storage transaction (75).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Closing storage transaction (75).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Waiting 2.911435801s before next download/retry.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Opened storage transaction (76).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Closing storage transaction (76).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Waiting 2.576668232s before next download/retry.","time":"2024-04-22T12:16:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Opened storage transaction (77).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Closing storage transaction (77).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Waiting 1.169932205s before next download/retry.","time":"2024-04-22T12:16:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Opened storage transaction (78).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Closing storage transaction (78).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Waiting 3.828349603s before next download/retry.","time":"2024-04-22T12:16:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Opened storage transaction (79).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Closing storage transaction (79).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Waiting 1.366543556s before next download/retry.","time":"2024-04-22T12:16:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Opened storage transaction (80).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Closing storage transaction (80).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Waiting 1.035696498s before next download/retry.","time":"2024-04-22T12:16:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Opened storage transaction (81).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Closing storage transaction (81).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Waiting 2.985066463s before next download/retry.","time":"2024-04-22T12:16:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Opened storage transaction (82).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Closing storage transaction (82).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Waiting 3.242832704s before next download/retry.","time":"2024-04-22T12:16:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Opened storage transaction (83).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Closing storage transaction (83).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Waiting 3.999616313s before next download/retry.","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Opened storage transaction (84).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Closing storage transaction (84).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Waiting 2.387769376s before next download/retry.","time":"2024-04-22T12:16:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Opened storage transaction (85).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Closing storage transaction (85).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Waiting 2.688579074s before next download/retry.","time":"2024-04-22T12:16:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Opened storage transaction (86).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Closing storage transaction (86).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Waiting 1.849060135s before next download/retry.","time":"2024-04-22T12:16:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Opened storage transaction (87).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Closing storage transaction (87).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Waiting 3.946011478s before next download/retry.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Opened storage transaction (88).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Closing storage transaction (88).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Waiting 8.243862528s before next download/retry.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Opened storage transaction (89).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Closing storage transaction (89).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Waiting 2.251348073s before next download/retry.","time":"2024-04-22T12:16:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Opened storage transaction (90).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Closing storage transaction (90).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Waiting 1.899648191s before next download/retry.","time":"2024-04-22T12:16:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Opened storage transaction (91).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Closing storage transaction (91).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Waiting 3.449852828s before next download/retry.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Opened storage transaction (92).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Closing storage transaction (92).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Waiting 1.348236825s before next download/retry.","time":"2024-04-22T12:16:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Opened storage transaction (93).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Closing storage transaction (93).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Waiting 2.408605s before next download/retry.","time":"2024-04-22T12:16:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Opened storage transaction (94).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Closing storage transaction (94).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Waiting 3.05543917s before next download/retry.","time":"2024-04-22T12:16:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Opened storage transaction (95).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Closing storage transaction (95).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Waiting 5.144603215s before next download/retry.","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Opened storage transaction (96).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Closing storage transaction (96).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Waiting 1.31481555s before next download/retry.","time":"2024-04-22T12:16:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Opened storage transaction (97).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Closing storage transaction (97).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Waiting 2.499569343s before next download/retry.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Opened storage transaction (98).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Closing storage transaction (98).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Waiting 2.510358299s before next download/retry.","time":"2024-04-22T12:16:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Opened storage transaction (99).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Closing storage transaction (99).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Waiting 2.543465426s before next download/retry.","time":"2024-04-22T12:16:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Opened storage transaction (100).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Closing storage transaction (100).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Waiting 3.891050982s before next download/retry.","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Opened storage transaction (101).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Closing storage transaction (101).","name":"data","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Waiting 14.97637097s before next download/retry.","time":"2024-04-22T12:16:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Opened storage transaction (102).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Closing storage transaction (102).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Waiting 1.773777408s before next download/retry.","time":"2024-04-22T12:16:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Opened storage transaction (103).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Closing storage transaction (103).","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Waiting 2.317040624s before next download/retry.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:16:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:16:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:16:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Opened storage transaction (104).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Closing storage transaction (104).","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Waiting 3.127293993s before next download/retry.","time":"2024-04-22T12:16:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Opened storage transaction (105).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Closing storage transaction (105).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Waiting 1.018236507s before next download/retry.","time":"2024-04-22T12:17:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Opened storage transaction (106).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Closing storage transaction (106).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Waiting 3.937622454s before next download/retry.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Opened storage transaction (107).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Closing storage transaction (107).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Waiting 1.404909998s before next download/retry.","time":"2024-04-22T12:17:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Opened storage transaction (108).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Closing storage transaction (108).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Waiting 1.014805985s before next download/retry.","time":"2024-04-22T12:17:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Opened storage transaction (109).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Closing storage transaction (109).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Waiting 2.869271368s before next download/retry.","time":"2024-04-22T12:17:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Opened storage transaction (110).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Closing storage transaction (110).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Waiting 3.228142543s before next download/retry.","time":"2024-04-22T12:17:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Opened storage transaction (111).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Closing storage transaction (111).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Waiting 2.219454895s before next download/retry.","time":"2024-04-22T12:17:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Opened storage transaction (112).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Closing storage transaction (112).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Waiting 2.570419994s before next download/retry.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Opened storage transaction (113).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Closing storage transaction (113).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Waiting 2.919190769s before next download/retry.","time":"2024-04-22T12:17:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:11Z"}
{"level":"debug","msg":"Opened storage transaction (114).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:11Z"}
{"level":"debug","msg":"Closing storage transaction (114).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:11Z"}
{"level":"debug","msg":"Waiting 5.228352133s before next download/retry.","time":"2024-04-22T12:17:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Opened storage transaction (115).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Closing storage transaction (115).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Waiting 2.146517258s before next download/retry.","time":"2024-04-22T12:17:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Opened storage transaction (116).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Closing storage transaction (116).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Waiting 2.605964502s before next download/retry.","time":"2024-04-22T12:17:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Opened storage transaction (117).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Closing storage transaction (117).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Waiting 2.229617903s before next download/retry.","time":"2024-04-22T12:17:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Opened storage transaction (118).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Closing storage transaction (118).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Waiting 1.265945211s before next download/retry.","time":"2024-04-22T12:17:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Opened storage transaction (119).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Closing storage transaction (119).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Waiting 8.527068814s before next download/retry.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Opened storage transaction (120).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Closing storage transaction (120).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Waiting 2.863181306s before next download/retry.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Opened storage transaction (121).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Closing storage transaction (121).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Waiting 2.81854963s before next download/retry.","time":"2024-04-22T12:17:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Opened storage transaction (122).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Closing storage transaction (122).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Waiting 2.286247508s before next download/retry.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Opened storage transaction (123).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Closing storage transaction (123).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Waiting 2.604741141s before next download/retry.","time":"2024-04-22T12:17:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Opened storage transaction (124).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Closing storage transaction (124).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Waiting 3.241205561s before next download/retry.","time":"2024-04-22T12:17:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Opened storage transaction (125).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Closing storage transaction (125).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Waiting 2.602960844s before next download/retry.","time":"2024-04-22T12:17:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Opened storage transaction (126).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Closing storage transaction (126).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Waiting 2.161213814s before next download/retry.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Opened storage transaction (127).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Closing storage transaction (127).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Waiting 3.271214598s before next download/retry.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Opened storage transaction (128).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Closing storage transaction (128).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Waiting 1.562919389s before next download/retry.","time":"2024-04-22T12:17:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Opened storage transaction (129).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Closing storage transaction (129).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Waiting 2.317243867s before next download/retry.","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Opened storage transaction (130).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Closing storage transaction (130).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Waiting 9.125470128s before next download/retry.","time":"2024-04-22T12:17:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Opened storage transaction (131).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Closing storage transaction (131).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Waiting 3.829414356s before next download/retry.","time":"2024-04-22T12:17:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Opened storage transaction (132).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Closing storage transaction (132).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Waiting 1.180362218s before next download/retry.","time":"2024-04-22T12:17:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Opened storage transaction (133).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Closing storage transaction (133).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Waiting 2.942854608s before next download/retry.","time":"2024-04-22T12:17:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Opened storage transaction (134).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Closing storage transaction (134).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Waiting 3.141483931s before next download/retry.","time":"2024-04-22T12:17:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Opened storage transaction (135).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Closing storage transaction (135).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Waiting 1.813125177s before next download/retry.","time":"2024-04-22T12:17:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Opened storage transaction (136).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Closing storage transaction (136).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Waiting 2.152342505s before next download/retry.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Opened storage transaction (137).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Closing storage transaction (137).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Waiting 2.910162858s before next download/retry.","time":"2024-04-22T12:17:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:36Z"}
{"level":"debug","msg":"Opened storage transaction (138).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:36Z"}
{"level":"debug","msg":"Closing storage transaction (138).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:36Z"}
{"level":"debug","msg":"Waiting 3.910697962s before next download/retry.","time":"2024-04-22T12:17:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Opened storage transaction (139).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Closing storage transaction (139).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Waiting 2.267784417s before next download/retry.","time":"2024-04-22T12:17:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Opened storage transaction (140).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Closing storage transaction (140).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Waiting 2.55581066s before next download/retry.","time":"2024-04-22T12:17:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Opened storage transaction (141).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Closing storage transaction (141).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Waiting 1.808115313s before next download/retry.","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Opened storage transaction (142).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Closing storage transaction (142).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Waiting 1.127470902s before next download/retry.","time":"2024-04-22T12:17:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Opened storage transaction (143).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Closing storage transaction (143).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Waiting 3.61159911s before next download/retry.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Opened storage transaction (144).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Closing storage transaction (144).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Waiting 2.889369325s before next download/retry.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Opened storage transaction (145).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Closing storage transaction (145).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Waiting 10.53990688s before next download/retry.","time":"2024-04-22T12:17:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Opened storage transaction (146).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Closing storage transaction (146).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Waiting 2.784930722s before next download/retry.","time":"2024-04-22T12:17:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:45Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Opened storage transaction (147).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Closing storage transaction (147).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:45Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Waiting 3.06454507s before next download/retry.","time":"2024-04-22T12:17:45Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Opened storage transaction (148).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Closing storage transaction (148).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Waiting 2.349472796s before next download/retry.","time":"2024-04-22T12:17:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:48Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Opened storage transaction (149).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Closing storage transaction (149).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:48Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Waiting 3.347793993s before next download/retry.","time":"2024-04-22T12:17:48Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Opened storage transaction (150).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Closing storage transaction (150).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Waiting 2.153922564s before next download/retry.","time":"2024-04-22T12:17:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Opened storage transaction (151).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Closing storage transaction (151).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Waiting 2.947470292s before next download/retry.","time":"2024-04-22T12:17:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Opened storage transaction (152).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Closing storage transaction (152).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Waiting 2.243382891s before next download/retry.","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Opened storage transaction (153).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Closing storage transaction (153).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Waiting 7.477365276s before next download/retry.","time":"2024-04-22T12:17:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Opened storage transaction (154).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Closing storage transaction (154).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Waiting 2.279041841s before next download/retry.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Opened storage transaction (155).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Closing storage transaction (155).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Waiting 3.927301942s before next download/retry.","time":"2024-04-22T12:17:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Opened storage transaction (156).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Closing storage transaction (156).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Waiting 2.233740448s before next download/retry.","time":"2024-04-22T12:17:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Opened storage transaction (157).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Closing storage transaction (157).","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Waiting 3.382876048s before next download/retry.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Opened storage transaction (158).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Closing storage transaction (158).","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Waiting 1.888809568s before next download/retry.","time":"2024-04-22T12:17:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:17:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:17:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:17:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:17:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:59Z"}
{"level":"debug","msg":"Opened storage transaction (159).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:59Z"}
{"level":"debug","msg":"Closing storage transaction (159).","name":"data","plugin":"bundle","time":"2024-04-22T12:17:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:17:59Z"}
{"level":"debug","msg":"Waiting 11.01028395s before next download/retry.","time":"2024-04-22T12:17:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:00Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Opened storage transaction (160).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Closing storage transaction (160).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:00Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Waiting 1.512703456s before next download/retry.","time":"2024-04-22T12:18:00Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Opened storage transaction (161).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Closing storage transaction (161).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Waiting 2.467477359s before next download/retry.","time":"2024-04-22T12:18:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Opened storage transaction (162).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Closing storage transaction (162).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Waiting 2.655357265s before next download/retry.","time":"2024-04-22T12:18:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Opened storage transaction (163).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Closing storage transaction (163).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Waiting 3.827605385s before next download/retry.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Opened storage transaction (164).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Closing storage transaction (164).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Waiting 2.803145388s before next download/retry.","time":"2024-04-22T12:18:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Opened storage transaction (165).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Closing storage transaction (165).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Waiting 2.538506961s before next download/retry.","time":"2024-04-22T12:18:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Opened storage transaction (166).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Closing storage transaction (166).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Waiting 3.334709266s before next download/retry.","time":"2024-04-22T12:18:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Opened storage transaction (167).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Closing storage transaction (167).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Waiting 1.207098317s before next download/retry.","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Opened storage transaction (168).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Closing storage transaction (168).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Waiting 9.923862572s before next download/retry.","time":"2024-04-22T12:18:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Opened storage transaction (169).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Closing storage transaction (169).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Waiting 3.856169038s before next download/retry.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Opened storage transaction (170).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Closing storage transaction (170).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Waiting 2.410272437s before next download/retry.","time":"2024-04-22T12:18:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Opened storage transaction (171).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Closing storage transaction (171).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Waiting 1.67428277s before next download/retry.","time":"2024-04-22T12:18:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Opened storage transaction (172).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Closing storage transaction (172).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Waiting 3.397138533s before next download/retry.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Opened storage transaction (173).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Closing storage transaction (173).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Waiting 1.361728353s before next download/retry.","time":"2024-04-22T12:18:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Opened storage transaction (174).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Closing storage transaction (174).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Waiting 2.334012862s before next download/retry.","time":"2024-04-22T12:18:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Opened storage transaction (175).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Closing storage transaction (175).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Waiting 3.685583657s before next download/retry.","time":"2024-04-22T12:18:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Opened storage transaction (176).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Closing storage transaction (176).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Waiting 2.83127565s before next download/retry.","time":"2024-04-22T12:18:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:20Z"}
{"level":"debug","msg":"Opened storage transaction (177).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:20Z"}
{"level":"debug","msg":"Closing storage transaction (177).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:20Z"}
{"level":"debug","msg":"Waiting 4.743557262s before next download/retry.","time":"2024-04-22T12:18:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Opened storage transaction (178).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Closing storage transaction (178).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Waiting 2.65361849s before next download/retry.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Opened storage transaction (179).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Closing storage transaction (179).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Waiting 3.758172712s before next download/retry.","time":"2024-04-22T12:18:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Opened storage transaction (180).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Closing storage transaction (180).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Waiting 1.392797435s before next download/retry.","time":"2024-04-22T12:18:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:25Z"}
{"level":"debug","msg":"Opened storage transaction (181).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:25Z"}
{"level":"debug","msg":"Closing storage transaction (181).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:25Z"}
{"level":"debug","msg":"Waiting 9.798709185s before next download/retry.","time":"2024-04-22T12:18:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Opened storage transaction (182).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Closing storage transaction (182).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Waiting 3.995945522s before next download/retry.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Opened storage transaction (183).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Closing storage transaction (183).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Waiting 2.393452339s before next download/retry.","time":"2024-04-22T12:18:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Opened storage transaction (184).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Closing storage transaction (184).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Waiting 1.317271016s before next download/retry.","time":"2024-04-22T12:18:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Opened storage transaction (185).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Closing storage transaction (185).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Waiting 1.761412991s before next download/retry.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Opened storage transaction (186).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Closing storage transaction (186).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Waiting 3.452862393s before next download/retry.","time":"2024-04-22T12:18:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Opened storage transaction (187).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Closing storage transaction (187).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Waiting 2.490764645s before next download/retry.","time":"2024-04-22T12:18:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Opened storage transaction (188).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Closing storage transaction (188).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Waiting 2.390226076s before next download/retry.","time":"2024-04-22T12:18:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Opened storage transaction (189).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Closing storage transaction (189).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Waiting 2.300071223s before next download/retry.","time":"2024-04-22T12:18:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:35Z"}
{"level":"debug","msg":"Opened storage transaction (190).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:35Z"}
{"level":"debug","msg":"Closing storage transaction (190).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:35Z"}
{"level":"debug","msg":"Waiting 5.937526707s before next download/retry.","time":"2024-04-22T12:18:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Opened storage transaction (191).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Closing storage transaction (191).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Waiting 2.781167217s before next download/retry.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Opened storage transaction (192).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Closing storage transaction (192).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Waiting 1.476863804s before next download/retry.","time":"2024-04-22T12:18:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Opened storage transaction (193).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Closing storage transaction (193).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Waiting 1.505784926s before next download/retry.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Opened storage transaction (194).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Closing storage transaction (194).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Waiting 3.176163979s before next download/retry.","time":"2024-04-22T12:18:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Opened storage transaction (195).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Closing storage transaction (195).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Waiting 2.221694755s before next download/retry.","time":"2024-04-22T12:18:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Opened storage transaction (196).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Closing storage transaction (196).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Waiting 10.259880109s before next download/retry.","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Opened storage transaction (197).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Closing storage transaction (197).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Waiting 2.115544932s before next download/retry.","time":"2024-04-22T12:18:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Opened storage transaction (198).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Closing storage transaction (198).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:42Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Waiting 3.004297636s before next download/retry.","time":"2024-04-22T12:18:42Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Opened storage transaction (199).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Closing storage transaction (199).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Waiting 2.601932979s before next download/retry.","time":"2024-04-22T12:18:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:45Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Opened storage transaction (200).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Closing storage transaction (200).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:45Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Waiting 2.156354081s before next download/retry.","time":"2024-04-22T12:18:45Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Opened storage transaction (201).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Closing storage transaction (201).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Waiting 2.327077027s before next download/retry.","time":"2024-04-22T12:18:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Opened storage transaction (202).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Closing storage transaction (202).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Waiting 2.445169257s before next download/retry.","time":"2024-04-22T12:18:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:48Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Opened storage transaction (203).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Closing storage transaction (203).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:48Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Waiting 2.042437514s before next download/retry.","time":"2024-04-22T12:18:48Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Opened storage transaction (204).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Closing storage transaction (204).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Waiting 2.748592554s before next download/retry.","time":"2024-04-22T12:18:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Opened storage transaction (205).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Closing storage transaction (205).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Waiting 2.01855863s before next download/retry.","time":"2024-04-22T12:18:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:51Z"}
{"level":"debug","msg":"Opened storage transaction (206).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:51Z"}
{"level":"debug","msg":"Closing storage transaction (206).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:51Z"}
{"level":"debug","msg":"Waiting 3.123087678s before next download/retry.","time":"2024-04-22T12:18:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Opened storage transaction (207).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Closing storage transaction (207).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Waiting 2.902188577s before next download/retry.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Opened storage transaction (208).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Closing storage transaction (208).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Waiting 1.080532034s before next download/retry.","time":"2024-04-22T12:18:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Opened storage transaction (209).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Closing storage transaction (209).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Waiting 1.153943215s before next download/retry.","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Opened storage transaction (210).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Closing storage transaction (210).","name":"data","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Waiting 11.444054843s before next download/retry.","time":"2024-04-22T12:18:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Opened storage transaction (211).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Closing storage transaction (211).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Waiting 1.408176886s before next download/retry.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Opened storage transaction (212).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Closing storage transaction (212).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Waiting 2.2793616s before next download/retry.","time":"2024-04-22T12:18:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Opened storage transaction (213).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Closing storage transaction (213).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Waiting 2.797675248s before next download/retry.","time":"2024-04-22T12:18:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:57Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Opened storage transaction (214).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Closing storage transaction (214).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:57Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Waiting 2.369024005s before next download/retry.","time":"2024-04-22T12:18:57Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Opened storage transaction (215).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Closing storage transaction (215).","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Waiting 2.52440893s before next download/retry.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:18:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:18:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:18:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Opened storage transaction (216).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Closing storage transaction (216).","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Waiting 2.237691959s before next download/retry.","time":"2024-04-22T12:18:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:01Z"}
{"level":"debug","msg":"Opened storage transaction (217).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:01Z"}
{"level":"debug","msg":"Closing storage transaction (217).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Waiting 1.670818554s before next download/retry.","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Opened storage transaction (218).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Closing storage transaction (218).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Waiting 2.817633317s before next download/retry.","time":"2024-04-22T12:19:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Opened storage transaction (219).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Closing storage transaction (219).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Waiting 2.015179598s before next download/retry.","time":"2024-04-22T12:19:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Opened storage transaction (220).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Closing storage transaction (220).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Waiting 2.804552364s before next download/retry.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Opened storage transaction (221).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Closing storage transaction (221).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Waiting 1.976544035s before next download/retry.","time":"2024-04-22T12:19:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:06Z"}
{"level":"debug","msg":"Opened storage transaction (222).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:06Z"}
{"level":"debug","msg":"Closing storage transaction (222).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:06Z"}
{"level":"debug","msg":"Waiting 9.42702488s before next download/retry.","time":"2024-04-22T12:19:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Opened storage transaction (223).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Closing storage transaction (223).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Waiting 1.04186018s before next download/retry.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Opened storage transaction (224).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Closing storage transaction (224).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Waiting 3.099348875s before next download/retry.","time":"2024-04-22T12:19:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Opened storage transaction (225).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Closing storage transaction (225).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Waiting 1.343774966s before next download/retry.","time":"2024-04-22T12:19:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Opened storage transaction (226).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Closing storage transaction (226).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Waiting 1.589571867s before next download/retry.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Opened storage transaction (227).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Closing storage transaction (227).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Waiting 3.820530774s before next download/retry.","time":"2024-04-22T12:19:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Opened storage transaction (228).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Closing storage transaction (228).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Waiting 1.895566006s before next download/retry.","time":"2024-04-22T12:19:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Opened storage transaction (229).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Closing storage transaction (229).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Waiting 1.859643592s before next download/retry.","time":"2024-04-22T12:19:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Opened storage transaction (230).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Closing storage transaction (230).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Waiting 2.011283148s before next download/retry.","time":"2024-04-22T12:19:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Opened storage transaction (231).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Closing storage transaction (231).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Waiting 2.935063115s before next download/retry.","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Opened storage transaction (232).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Closing storage transaction (232).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Waiting 14.975033727s before next download/retry.","time":"2024-04-22T12:19:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Opened storage transaction (233).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Closing storage transaction (233).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Waiting 3.374859124s before next download/retry.","time":"2024-04-22T12:19:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Opened storage transaction (234).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Closing storage transaction (234).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Waiting 2.708517508s before next download/retry.","time":"2024-04-22T12:19:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Opened storage transaction (235).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Closing storage transaction (235).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Waiting 3.915960286s before next download/retry.","time":"2024-04-22T12:19:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Opened storage transaction (236).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Closing storage transaction (236).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Waiting 1.869237305s before next download/retry.","time":"2024-04-22T12:19:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Opened storage transaction (237).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Closing storage transaction (237).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Waiting 2.780009694s before next download/retry.","time":"2024-04-22T12:19:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Opened storage transaction (238).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Closing storage transaction (238).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Waiting 3.773610036s before next download/retry.","time":"2024-04-22T12:19:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Opened storage transaction (239).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Closing storage transaction (239).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Waiting 2.734577223s before next download/retry.","time":"2024-04-22T12:19:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:27Z"}
{"level":"debug","msg":"Opened storage transaction (240).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:27Z"}
{"level":"debug","msg":"Closing storage transaction (240).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:27Z"}
{"level":"debug","msg":"Waiting 2.521767028s before next download/retry.","time":"2024-04-22T12:19:27Z"}
{"client_addr":"10.42.0.12:43718","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0bUN4blhob2lKM3M3RnY1aVltU3VGUWIzN0lGTFNMMGVrcmR6LUVweEtZIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.EA6dNkIudpBoxdrbPRYUnIY0e8oLzRgtSQX_I8P15wdQinsymuSRz16gHP7_Wny5o7mI4w4_Df4Pzwt1aUTtUnpNoH5233356DQ5a4ACjiy-Vzyz98JwH14DrWblPMwK_dUcknU0NgTHPKWB5XuXGzRl39XAFvo2CEJ8UlM6dW01I1jmL9_d_iilYbAxrBJgJnD9FxKa_Q10TEzVi-4K-hA8h3_2_FMwvOEFnNL2qd-H_zuaVoGdOk2MfRmx5HkxEx4NV1e3CfqpStsLtSRR_P5v3hkdiB5rV9xYKBnmCftWsF1gzxrPbqvq9cxyYLADbz4UH0nL_lcJFLavWliSSw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"36245\",\"timestamp\":1713788368}}}","req_id":1,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43718","level":"info","msg":"Sent response.","req_id":1,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.149635,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43726","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJpMnNBYXE1b0ljMEt3cVpEbWowa2NlZ29MenV5V21GZEt1bFVVTEx5c0VzIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.Oj88GUdT8rQLOau-uw7uadX0wrhn3wGULIFg099RgGVrvuNdKvCxk1LUcwMwQ9Xsr2f7DUqe-t9w8fp2hOkT60qqMavFWbqiSD68xTBnEzNxQip_zYOzakINukBiNlqUJN-58301kHwJBj9rRmG7UsauBquDI3SvLX7pe1j7iqOdoqk0BmKHTM2574yLuVInDtI16IsxD3A9T5mwqx5PdnpgNXkNJsjXZXuKvnEzxALbcF_e_kKRRnr8f_y3ee5Ruj0LWB4jyd780Vj6fp9NKSEM_F6gcyp9SO2_52mO3tCY-bTY7ctYr9RD3gF85ZaHjAc1dAwHq2_FvfZkDRSk2w\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"23580\",\"timestamp\":1713788368}}}","req_id":2,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43726","level":"info","msg":"Sent response.","req_id":2,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.85161,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJFMFg4QWhrUlBFZE1lRXNiRzc4emdTN3pFanFiSmhfdmx1a2hxN2tjZHM0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.C3cBpGT2sd9TR7EhlioNbrcYZF9z2m-MJBBpLm1ofVaPbU6MThabBk73T3r-gjL6EtcdwgqxTlhKsy3fNMfnNp9qMfWBnVyKSIhxDH5NMKB_5RG2j5M45THqqe4_R8h8khv7AsWAcFSAk_BaICFS13Isq7iAcunD8NjxmWaDmgky2IwaWrKpwqSPJa0YVkseI7UmUbD9Fei5eFO-uAgLsiBYMZHHx-hTc_H3vyJrTC7HxGzHv_2sCn-oxAdRGGciSHZZhq3xrq36YHfMDafFfm1WB2OzQ0jEbMdE7DO96QPkpITX5jo0K6_UHdU9H9U4nSYNxGP8ObVWzrm9WVXE5A\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"27377\",\"timestamp\":1713788368}}}","req_id":3,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Sent response.","req_id":3,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.531119,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJaSjA3U05XV1ViMlhuX3ZFNEQyc29lQ1p4RUpJSXlOandHN0ZibTRaZW1zIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.knewV0OxBjtFD2unOBT_jlUUQI6G67Yvuomgf78s1dm37-pL86RF46u5ljK1AOxdV6S-k8cJoNz5vt9V5Q1e3gCmbL4rsCVFw6P8HgROlBvl6l9aOdlq1pi-S7a6XGgIakpM6sBVNjB3EizCclMKlOIexHdGEZ8GHiuL5OjfsnG0NiOKS3ip1PqZWhdR5eCVc-kYE-GYx-nL6DNhGNXsQbcFvJbJDbq0bGduGohRWLUpxIQGEr5KkTEw4zdLeF3G5ja70YbojuVxXeX_w387BmA2ndhQfkWIK-R1N0k5VVCajr6DK08cNHbFLkEm4yOj0TIv6W0-Y79wcVL8P4pF9g\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"3834\",\"timestamp\":1713788368}}}","req_id":4,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Sent response.","req_id":4,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.384792,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43736","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJyVm0zZW9KZ3Z6aFRTUEYyWFdnbDktSlpaV1MwS0h6OEwzNloyYUNoczZJIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.BMj9gNFjgUwC2yT9wiG_mG5Koio-MCQ7b4TcWcrf0XN1fJbDyw3gMYsl1wa9pNxkQH6tRorwak4vJdRNK_pJsBLldtE3hTE07U4QiBbWDGERVi4T9d8FVOlr5rAB09olWTDFRXSmxU8K_ZuBmD7pERZfXdhiBc7BLdn8avpchj7XKfwIEwWq7fOGEyQMQ3J4DwnTFMtKzEuwf-Np70TNYuIjKx9fVaRDbBiizqPyCWMQ5UdCJZT4AgnyuwR7xIc14cBsoYFZgsm2Bqsj_2fa2RdhmyQoseynDEzmgu03iC9I7VRKgBH5CmhSLC-QY5Ire2fus2RO6kIWQVqrBo4K6w\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"63908\",\"timestamp\":1713788368}}}","req_id":5,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43736","level":"info","msg":"Sent response.","req_id":5,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.916518,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Opened storage transaction (246).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43736","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJTSThzaHIxMkRpUUdQM3RMRjlsYVNhajYzZkdNVmQ3cUw2TVBhMTlhbEtzIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.LDURHE3_C62_bHFC0oI_HhrD6f2j6lKiFt3OOj5fRq6p3G-dMA3AQ92zWalvnXy3tWQu190YVv41J-KE2nKWAvw7c43rNyzddyrsjWUWCG4NwZerfaPQK__nXLS2ZFhLSDWzcGnbFg8V1COpIZrJUTw3m1VhEXruH7ASWmrAvtOegFq4ZsIesE7FhZjo0LlBZvUQjA1JuH6YjaHp-xNupU71ocK4weTAZarFEsnNn-KrNL7z8DeoNmm6k_9awayxzVlnsZO5cnwdn5LTygnuiMH7_lztf_I95apCHp-y1XdJb-5Z00Lf50mWCIylMedMVslhUvNd31XgTbxpXJV5Jw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"19999\",\"timestamp\":1713788368}}}","req_id":6,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43736","level":"info","msg":"Sent response.","req_id":6,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.528599,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Closing storage transaction (246).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Waiting 2.648345474s before next download/retry.","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43718","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJTakNCdXhheDRfakpHZ2hMUHBVNERlNEN6STFuYWJoQlIwbE5JNHJXcHJzIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.KD-OlG4qfI00Ur6-SVFHNuEwMCVCocA483Pi1aPM_UgDLLP-KsdFkBR3Jcl3XGrVs85K0W9FeL2_L8UahSOoqNEViOGosK_GL4vnoMkeMyTrAkTztNE9xdiu9wcXkZddQv6aFe9XvFvK1vaTFMPVcxM93g-I-ev6jXauNue9ks_3musSLy8pTR6qr4T7M7quh9Ly2hgbfuo4wifnO96nYdL7qR-xZ__tjAMkKdjDg0iumhHMMKslDp1h-lG6dM-da6RuRHR-nruSUe2iETYnYLrnbqX2O_lyHTbsG9LQcQLOvL1Xcx0hKs7ZhuDtuTSoWRQk-CRmStMhjF62PHdZWA\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"54627\",\"timestamp\":1713788368}}}","req_id":7,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43718","level":"info","msg":"Sent response.","req_id":7,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.757827,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43750","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJkWWJxYTFPdmtEN0paZmZQeS1CazY0ckMzdWVBaDREb1A4NlVrWjV6eTQ4In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.iokuqEs5WQMzB8F3LmweZwTAuQ7ViHWIZeth8KKRb7b3W0fxFEel34yACoihTVsHF4uiPY7sfuEnW9hWXf02dRnEeY9xELkjAlH2A200PfwjCt6iKR2ELC1CbVd7Q7jlZFHnsF3NbgosWVXVvdMMZuDsdUOorZNyxIH92a4Uqj-_bO1I6Vtke-i_VqaW-lwU52xevp9tCzpoyfjBoHFMzFpnvL8onKtxJ1fLM55hkyDMgt6Z2X-TllRYjnU25gpQ3cjsxIWkmmdfyDwU_r6QF4pKWPw63YmAeLAGcD9LRjyVyupoz4T0MRb_yHk4kiVU5ZD3VvhCwJvbY0tJieif4w\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"37630\",\"timestamp\":1713788368}}}","req_id":8,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43750","level":"info","msg":"Sent response.","req_id":8,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.559824,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIxSnJSUU1Jc0VIcVF1QnNGVVJQenZPMzkxczdyVWZTWVFjSVotOHFCVHJrIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.ADq3mpm655zahOaxaY2rP3EoBUdgaK2nuaOir-halIOUaU2yHh8OquH3eAvCST1eGadaxs4HCwigGOGQ3bfu9JBm-NBGFCN93MNwTl3wuqkO0VEc0ED5DUSjjvmXcD6THe0Jk4aHKJFH_RcPie84cnqKQZQKTfKOfrh8GiEC0XizB-bzffaul8XmvLSPods0ph3nUYMCn3onSFsULwNIcl67m4X3EaPPbb3hf9FSPU7Iianf76SdP2vvlYhopwLKvZ7ajOdJEdcGxL-J3sNZU_zq4L3dA_ayczKHfTP1agePsf3ZsaE0RQumK8MEKU44--Mcn5vA3QOpSCfIcxR_mg\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"24243\",\"timestamp\":1713788368}}}","req_id":9,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Sent response.","req_id":9,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.699512,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43766","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJSTjV6STk5Zk1NTjB0Yzc1OUFBZWh2Vk9SQzMwS1ZWaUN2ZGFRWU9oeUw0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.EIYno7L_doqFkhK3mAwgZFXxLYeoszid2x3IrvqFLz-hS_QqU83V2F-n5BCd6fvV7MadjM6w9jPGrdn2eXKfbt0T0yAABBbFyaol1OLcxe12OCj2mie81Nc9Ai9c_tfS9_GNjlx-61P5PFSptrXTvk7rlxSg8D6usPZ3AFd0dBgguj_Rjw52gBj4VTT1mjYM-8WBYiQjQBJNStqnXUMdB8NJnCYjRZ9ueLiNevWrfnmx0EZpWW5iGfhnO7F6Uc2x4EmjksiDB8fOMaLmC-QQEbpXE02bOgzwO6CT4xLxvabJmpcQyB-KQWYjdvPgu3D4OUqcyTuupevRo1_Smo4xSw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"58756\",\"timestamp\":1713788368}}}","req_id":10,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43766","level":"info","msg":"Sent response.","req_id":10,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.789035,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJXUjJUdU83VFlUVHctbDZHRUpQNXZKQXMwcjV6V0dySlkxTVpZeENyOUtvIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.MSL9Vfmw7Q7fD3G9NyIBOFLimSrpPuEFo5a8-ogmq1s3YYeI272nISGu4qI6h3IvfDgNPZrSdcBjgxRlEd6ZAJKQi1pnu3bOhW0cUmSfxQvk8N20GxDiuQHjCS1QlMA1QudDfshKjJWtflASa6jwUOrzrxM71e-yGYwFrFnGJILnmodZH6eDB9nrF_UII7Ml4xRkwx9yqZdJ_cOfHV5mJOkqENfjgWOmJKe4qu3DIryLNB1mfJh4XE676BtbxFLI3SneDxBj9QEF81rYCDZUHFADyQ4stc1FCv1IWy54QIOIN1mpeTJ0ICzehA9nl8t5QyPHfXCzUHFtOi6zbBz5bg\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"11831\",\"timestamp\":1713788368}}}","req_id":11,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:19:28Z"}
{"client_addr":"10.42.0.12:43728","level":"info","msg":"Sent response.","req_id":11,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.558685,"resp_status":200,"time":"2024-04-22T12:19:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Opened storage transaction (253).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Closing storage transaction (253).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Waiting 2.776199199s before next download/retry.","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Opened storage transaction (254).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Closing storage transaction (254).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Waiting 6.256210228s before next download/retry.","time":"2024-04-22T12:19:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Opened storage transaction (255).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Closing storage transaction (255).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Waiting 2.934695762s before next download/retry.","time":"2024-04-22T12:19:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Opened storage transaction (256).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Closing storage transaction (256).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Waiting 3.239935495s before next download/retry.","time":"2024-04-22T12:19:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Opened storage transaction (257).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Closing storage transaction (257).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Waiting 1.162409848s before next download/retry.","time":"2024-04-22T12:19:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Opened storage transaction (258).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Closing storage transaction (258).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Waiting 1.515581458s before next download/retry.","time":"2024-04-22T12:19:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Opened storage transaction (259).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Closing storage transaction (259).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Waiting 3.423757424s before next download/retry.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Opened storage transaction (260).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Closing storage transaction (260).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Waiting 2.907620421s before next download/retry.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Opened storage transaction (261).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Closing storage transaction (261).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Waiting 3.823722759s before next download/retry.","time":"2024-04-22T12:19:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Opened storage transaction (262).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Closing storage transaction (262).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Waiting 1.58713584s before next download/retry.","time":"2024-04-22T12:19:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Opened storage transaction (263).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Closing storage transaction (263).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Waiting 2.964044762s before next download/retry.","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Opened storage transaction (264).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Closing storage transaction (264).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Waiting 5.303403322s before next download/retry.","time":"2024-04-22T12:19:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Opened storage transaction (265).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Closing storage transaction (265).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Waiting 2.550303254s before next download/retry.","time":"2024-04-22T12:19:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Opened storage transaction (266).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Closing storage transaction (266).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Waiting 3.973446784s before next download/retry.","time":"2024-04-22T12:19:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Opened storage transaction (267).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Closing storage transaction (267).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Waiting 2.593708001s before next download/retry.","time":"2024-04-22T12:19:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Opened storage transaction (268).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Closing storage transaction (268).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Waiting 7.310428017s before next download/retry.","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Opened storage transaction (269).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Closing storage transaction (269).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Waiting 2.212796286s before next download/retry.","time":"2024-04-22T12:19:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Opened storage transaction (270).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Closing storage transaction (270).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Waiting 3.944263741s before next download/retry.","time":"2024-04-22T12:19:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:48Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Opened storage transaction (271).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Closing storage transaction (271).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:48Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Waiting 1.422266482s before next download/retry.","time":"2024-04-22T12:19:48Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Opened storage transaction (272).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Closing storage transaction (272).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Waiting 2.772070809s before next download/retry.","time":"2024-04-22T12:19:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Opened storage transaction (273).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Closing storage transaction (273).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Waiting 2.744546234s before next download/retry.","time":"2024-04-22T12:19:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Opened storage transaction (274).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Closing storage transaction (274).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Waiting 1.637119103s before next download/retry.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Opened storage transaction (275).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Closing storage transaction (275).","name":"data","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Waiting 14.060921556s before next download/retry.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Opened storage transaction (276).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Closing storage transaction (276).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Waiting 2.337900962s before next download/retry.","time":"2024-04-22T12:19:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Opened storage transaction (277).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Closing storage transaction (277).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Waiting 1.210304854s before next download/retry.","time":"2024-04-22T12:19:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Opened storage transaction (278).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Closing storage transaction (278).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Waiting 2.436236765s before next download/retry.","time":"2024-04-22T12:19:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Opened storage transaction (279).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Closing storage transaction (279).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Waiting 3.304423824s before next download/retry.","time":"2024-04-22T12:19:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Opened storage transaction (280).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Closing storage transaction (280).","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Waiting 2.142460342s before next download/retry.","time":"2024-04-22T12:19:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:19:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:19:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:19:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Opened storage transaction (281).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Closing storage transaction (281).","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Waiting 3.134320294s before next download/retry.","time":"2024-04-22T12:19:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:00Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Opened storage transaction (282).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Closing storage transaction (282).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:00Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Waiting 2.172152252s before next download/retry.","time":"2024-04-22T12:20:00Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Opened storage transaction (283).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Closing storage transaction (283).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Waiting 2.921420395s before next download/retry.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Opened storage transaction (284).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Closing storage transaction (284).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Waiting 1.114285429s before next download/retry.","time":"2024-04-22T12:20:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Opened storage transaction (285).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Closing storage transaction (285).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Waiting 1.007973013s before next download/retry.","time":"2024-04-22T12:20:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Opened storage transaction (286).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Closing storage transaction (286).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Waiting 1.100956636s before next download/retry.","time":"2024-04-22T12:20:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Opened storage transaction (287).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Closing storage transaction (287).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Waiting 2.526099209s before next download/retry.","time":"2024-04-22T12:20:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Opened storage transaction (288).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Closing storage transaction (288).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Waiting 1.43200959s before next download/retry.","time":"2024-04-22T12:20:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Opened storage transaction (289).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Closing storage transaction (289).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Waiting 2.878632275s before next download/retry.","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Opened storage transaction (290).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Closing storage transaction (290).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Waiting 2.536943216s before next download/retry.","time":"2024-04-22T12:20:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Opened storage transaction (291).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Closing storage transaction (291).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Waiting 2.906309222s before next download/retry.","time":"2024-04-22T12:20:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Opened storage transaction (292).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Closing storage transaction (292).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Waiting 10.380118116s before next download/retry.","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Opened storage transaction (293).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Closing storage transaction (293).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Waiting 1.379849917s before next download/retry.","time":"2024-04-22T12:20:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Opened storage transaction (294).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Closing storage transaction (294).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Waiting 3.544476591s before next download/retry.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Opened storage transaction (295).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Closing storage transaction (295).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Waiting 2.398200267s before next download/retry.","time":"2024-04-22T12:20:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Opened storage transaction (296).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Closing storage transaction (296).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Waiting 1.919311416s before next download/retry.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Opened storage transaction (297).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Closing storage transaction (297).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Waiting 2.248605383s before next download/retry.","time":"2024-04-22T12:20:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Opened storage transaction (298).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Closing storage transaction (298).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Waiting 2.27160032s before next download/retry.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Opened storage transaction (299).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Closing storage transaction (299).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Waiting 2.213667357s before next download/retry.","time":"2024-04-22T12:20:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Opened storage transaction (300).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Closing storage transaction (300).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Waiting 1.024831989s before next download/retry.","time":"2024-04-22T12:20:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Opened storage transaction (301).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Closing storage transaction (301).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Waiting 2.563268438s before next download/retry.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Opened storage transaction (302).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Closing storage transaction (302).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Waiting 2.480954634s before next download/retry.","time":"2024-04-22T12:20:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:20Z"}
{"level":"debug","msg":"Opened storage transaction (303).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:20Z"}
{"level":"debug","msg":"Closing storage transaction (303).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:20Z"}
{"level":"debug","msg":"Waiting 7.680258804s before next download/retry.","time":"2024-04-22T12:20:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Opened storage transaction (304).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Closing storage transaction (304).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Waiting 3.872487598s before next download/retry.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Opened storage transaction (305).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Closing storage transaction (305).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Waiting 1.955795943s before next download/retry.","time":"2024-04-22T12:20:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Opened storage transaction (306).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Closing storage transaction (306).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Waiting 2.764825993s before next download/retry.","time":"2024-04-22T12:20:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Opened storage transaction (307).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Closing storage transaction (307).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Waiting 3.034839828s before next download/retry.","time":"2024-04-22T12:20:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Opened storage transaction (308).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Closing storage transaction (308).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Waiting 2.670385171s before next download/retry.","time":"2024-04-22T12:20:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Opened storage transaction (309).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Closing storage transaction (309).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Waiting 14.796112033s before next download/retry.","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Opened storage transaction (310).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Closing storage transaction (310).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Waiting 3.643205773s before next download/retry.","time":"2024-04-22T12:20:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Opened storage transaction (311).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Closing storage transaction (311).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Waiting 1.077766331s before next download/retry.","time":"2024-04-22T12:20:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Opened storage transaction (312).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Closing storage transaction (312).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Waiting 2.890244144s before next download/retry.","time":"2024-04-22T12:20:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Opened storage transaction (313).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Closing storage transaction (313).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Waiting 3.817532648s before next download/retry.","time":"2024-04-22T12:20:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Opened storage transaction (314).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Closing storage transaction (314).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Waiting 1.269748676s before next download/retry.","time":"2024-04-22T12:20:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Opened storage transaction (315).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Closing storage transaction (315).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Waiting 2.045260858s before next download/retry.","time":"2024-04-22T12:20:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Opened storage transaction (316).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Closing storage transaction (316).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Waiting 2.003757259s before next download/retry.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Opened storage transaction (317).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Closing storage transaction (317).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Waiting 1.613033114s before next download/retry.","time":"2024-04-22T12:20:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Opened storage transaction (318).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Closing storage transaction (318).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Waiting 3.864791401s before next download/retry.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Opened storage transaction (319).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Closing storage transaction (319).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Waiting 2.971177378s before next download/retry.","time":"2024-04-22T12:20:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Opened storage transaction (320).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Closing storage transaction (320).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Waiting 2.895611291s before next download/retry.","time":"2024-04-22T12:20:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Opened storage transaction (321).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Closing storage transaction (321).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Waiting 2.562319649s before next download/retry.","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Opened storage transaction (322).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:42Z"}
{"level":"debug","msg":"Closing storage transaction (322).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:43Z"}
{"level":"debug","msg":"Waiting 10.233536973s before next download/retry.","time":"2024-04-22T12:20:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Opened storage transaction (323).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Closing storage transaction (323).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Waiting 2.412960103s before next download/retry.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Opened storage transaction (324).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Closing storage transaction (324).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Waiting 3.779654073s before next download/retry.","time":"2024-04-22T12:20:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Opened storage transaction (325).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Closing storage transaction (325).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Waiting 1.141023898s before next download/retry.","time":"2024-04-22T12:20:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Opened storage transaction (326).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Closing storage transaction (326).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Waiting 1.644910545s before next download/retry.","time":"2024-04-22T12:20:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:48Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Opened storage transaction (327).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Closing storage transaction (327).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:48Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Waiting 3.747464986s before next download/retry.","time":"2024-04-22T12:20:48Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Opened storage transaction (328).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Closing storage transaction (328).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Waiting 2.23247126s before next download/retry.","time":"2024-04-22T12:20:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Opened storage transaction (329).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Closing storage transaction (329).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Waiting 2.572617852s before next download/retry.","time":"2024-04-22T12:20:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Opened storage transaction (330).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Closing storage transaction (330).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Waiting 2.695362534s before next download/retry.","time":"2024-04-22T12:20:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:53Z"}
{"level":"debug","msg":"Opened storage transaction (331).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:53Z"}
{"level":"debug","msg":"Closing storage transaction (331).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:53Z"}
{"level":"debug","msg":"Waiting 6.387021176s before next download/retry.","time":"2024-04-22T12:20:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Opened storage transaction (332).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Closing storage transaction (332).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Waiting 2.251693134s before next download/retry.","time":"2024-04-22T12:20:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Opened storage transaction (333).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Closing storage transaction (333).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Waiting 3.617474904s before next download/retry.","time":"2024-04-22T12:20:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Opened storage transaction (334).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Closing storage transaction (334).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Waiting 1.183851524s before next download/retry.","time":"2024-04-22T12:20:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:57Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Opened storage transaction (335).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Closing storage transaction (335).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:57Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Waiting 1.417971593s before next download/retry.","time":"2024-04-22T12:20:57Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Opened storage transaction (336).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Closing storage transaction (336).","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Waiting 2.377583308s before next download/retry.","time":"2024-04-22T12:20:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Opened storage transaction (337).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Closing storage transaction (337).","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Waiting 2.128822105s before next download/retry.","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:20:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:20:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:20:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Opened storage transaction (338).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Closing storage transaction (338).","name":"data","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Waiting 12.878801965s before next download/retry.","time":"2024-04-22T12:20:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Opened storage transaction (339).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Closing storage transaction (339).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Waiting 3.955725649s before next download/retry.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Opened storage transaction (340).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Closing storage transaction (340).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Waiting 1.337438464s before next download/retry.","time":"2024-04-22T12:21:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Opened storage transaction (341).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Closing storage transaction (341).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Waiting 1.274909443s before next download/retry.","time":"2024-04-22T12:21:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Opened storage transaction (342).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Closing storage transaction (342).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Waiting 1.141926192s before next download/retry.","time":"2024-04-22T12:21:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Opened storage transaction (343).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Closing storage transaction (343).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Waiting 3.294499634s before next download/retry.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Opened storage transaction (344).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Closing storage transaction (344).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Waiting 1.557680726s before next download/retry.","time":"2024-04-22T12:21:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Opened storage transaction (345).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Closing storage transaction (345).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Waiting 1.999472442s before next download/retry.","time":"2024-04-22T12:21:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Opened storage transaction (346).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Closing storage transaction (346).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Waiting 2.510733683s before next download/retry.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Opened storage transaction (347).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Closing storage transaction (347).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Waiting 2.68269873s before next download/retry.","time":"2024-04-22T12:21:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Opened storage transaction (348).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Closing storage transaction (348).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Waiting 2.552823131s before next download/retry.","time":"2024-04-22T12:21:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Opened storage transaction (349).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Closing storage transaction (349).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Waiting 1.775294076s before next download/retry.","time":"2024-04-22T12:21:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:12Z"}
{"level":"debug","msg":"Opened storage transaction (350).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:12Z"}
{"level":"debug","msg":"Closing storage transaction (350).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:12Z"}
{"level":"debug","msg":"Waiting 4.126175198s before next download/retry.","time":"2024-04-22T12:21:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Opened storage transaction (351).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Closing storage transaction (351).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Waiting 1.884297618s before next download/retry.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Opened storage transaction (352).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Closing storage transaction (352).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Waiting 3.998261898s before next download/retry.","time":"2024-04-22T12:21:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Opened storage transaction (353).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Closing storage transaction (353).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Waiting 2.398759624s before next download/retry.","time":"2024-04-22T12:21:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:16Z"}
{"level":"debug","msg":"Opened storage transaction (354).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:16Z"}
{"level":"debug","msg":"Closing storage transaction (354).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:16Z"}
{"level":"debug","msg":"Waiting 4.144341577s before next download/retry.","time":"2024-04-22T12:21:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Opened storage transaction (355).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Closing storage transaction (355).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Waiting 3.34797521s before next download/retry.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Opened storage transaction (356).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Closing storage transaction (356).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Waiting 1.136176283s before next download/retry.","time":"2024-04-22T12:21:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Opened storage transaction (357).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Closing storage transaction (357).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Waiting 1.164671631s before next download/retry.","time":"2024-04-22T12:21:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Opened storage transaction (358).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Closing storage transaction (358).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Waiting 1.56040787s before next download/retry.","time":"2024-04-22T12:21:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Opened storage transaction (359).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Closing storage transaction (359).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Waiting 11.012531967s before next download/retry.","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Opened storage transaction (360).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Closing storage transaction (360).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Waiting 2.539450967s before next download/retry.","time":"2024-04-22T12:21:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Opened storage transaction (361).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Closing storage transaction (361).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Waiting 2.119356932s before next download/retry.","time":"2024-04-22T12:21:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Opened storage transaction (362).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Closing storage transaction (362).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Waiting 3.987594339s before next download/retry.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Opened storage transaction (363).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Closing storage transaction (363).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Waiting 2.592867516s before next download/retry.","time":"2024-04-22T12:21:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:26Z"}
{"level":"debug","msg":"Opened storage transaction (364).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:26Z"}
{"level":"debug","msg":"Closing storage transaction (364).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:26Z"}
{"level":"debug","msg":"Waiting 1.163984814s before next download/retry.","time":"2024-04-22T12:21:26Z"}
{"client_addr":"10.42.0.12:56706","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJOMklITUlPVGlYU0t4U1dKUWkxRVJVMTBnSlJyekNIaDlKb052Y0NnZWdFIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.pNvyUwoZ-eU0L0smC5yUX0rJ7oJhccoXdOO1O_LQUB89vxJMxzktzuJziNpu-iV4tdHzRDdUDTutoMAhGLkIRmrWzDgoNtCBV8W8D8SPQrjNhew4XzHP3vcMfcjfEiuhkWHi_HxeoqpkxoousPf8Mr681yNFaDlfnwj5OQIwSDaWh4uwlV2Qfk9h4-TcntBqGDBOgMAFwemeUb81x_WFSGVZ6F0QjVDcQHb2UJShzjHjxRvzzs5u316bZDOe8ZYuOrqHe6SguWUv5du51rFEAQR3gYq2t0fcKLG2VlJsCF1cPX8NyXf4Juoa7vkhN_IpIXrVMR76c0a1adkZQqaVmw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"44846\",\"timestamp\":1713788486}}}","req_id":12,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:26Z"}
{"client_addr":"10.42.0.12:56706","level":"info","msg":"Sent response.","req_id":12,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.714616,"resp_status":200,"time":"2024-04-22T12:21:26Z"}
{"client_addr":"10.42.0.12:56708","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJPV05mRnRVNTl0TDJXTjZtSThVTS05dGNaenJ1R3dKMmJ0OEhsWGVlSDJBIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.Nlcza06iCi5t5Qj_I1j1eoqrc7khUJTzXm6dO7ReYmvS4y1_RM_c_XxSQQfnxpGPYMmD7FFL33tgr3HCf3OyBdvzSZzrYSfRBsA1Voh5rqp6pjScks5dQTgJKh5vfcziT_7UMrD2ixGvpUm1Jpa8r7EPrFsgGsM0vm2jjCfIes0p0JAWUxTCPNMurwB4L95uVmG07hBq6JSrMn6GYkFHzXJbuDbRN2cD19SPUsZ5iZhuhRo7QujRQHZlrFPgNiABcstWmW9PcuvuNbe231dCwBTgyCb2lqt_YDh7xyjT8a_aiB3DfGuE3QdQu4ojP4e9UbgZkV06ZMgBYB-HPllYvw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"35705\",\"timestamp\":1713788487}}}","req_id":13,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56708","level":"info","msg":"Sent response.","req_id":13,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.830927,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJJQUJLWHlTaVJPdkcyUVRwWURjSW5ILWtuSjVqZUpQWktzYjcyYWJsMlowIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.pt0gGy9zcqWOuVe82j9LYW7vyaE0CNTVzcfFCfdT_-0xedv6XSkaFjjrbNQKR-RwuwLRqUyawj1Uy-8zutKS_ihucVW_Mc1GR6Ke5OdXp8hz9FQvWPUSX7MNN7rPKZ-_dOiJmtYgdWwS_lzaVDRSepMauhvh5Ew2vfjLu8BG3-f7vIfmCCBiaDZWbDm3XkEMYQLEX4tMQ0pGLWOYMOepS7AIkhUqB15JWZfIb1Wp-TLBPU2UEVgdMxiwN7F7vcz8hpIjUuT-m5ukCUgH48H7-n8KMFkXLixpo9dIXMNODWvyzLmLMC2R8GxI1qZbDkIXnqak815StsiDImbQCuuK7g\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"43863\",\"timestamp\":1713788487}}}","req_id":14,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Sent response.","req_id":14,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.655639,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfS1cydmpiM2VBMThBQXJJTEhvQnVGNDJsNEdTQm1LQTJuYURVNmd4dko0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.0Qt6WFfEbllZXTaw-fTOAYxUyMTZWSvxfhA7ZPlLKD3HBY2eozosfUdv5nj1JBqTXYaO_iN01DbUNfKhbvSov3g6BWJfW-4O4MVjeHkyFMMEzj3cprS8ei0Z0ze5soumD2fuVVAD_e5uEgRavzvF_U71bDOLJwFeyaZzC_ViDNhwqyDJnOBgOEqO8QWLcMzNQP3aIc1AX-UY3Vv1er8zrkXFSf6pfukuDl1QAhbEvQO3zXTActaOZqggjbTtuiNo2JXQaxrAaDIHIvZXrrunZGh59x8Q_NuwddLEWA7xzftTDYhV3_YTDZpAiYo7CU2VJy5NI6R17R9LK1zUxInSaQ\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"26264\",\"timestamp\":1713788487}}}","req_id":15,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Sent response.","req_id":15,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.621066,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwX2hrc1BZUzBmVmpwQjB2cHVUc043YVNka3NRdERDemt6WDVGZWVKWl93In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.RaHNeWCT7ZV6mxVgjgPMz60rfL8ucxZ1uXz-035Zdu8ytlCL5H-nFrpwxp1DyBUMb-Cv5LGPahQxMi1gECwIgeRDyxdmOe3vxBSkVYYRic2mG43_LCT-N-dxWN7iE3PPPYEEukpcX7U3hzciVAInUwbyhgohOT3eM2Sge1jaXrzHzBOQbvdRqjm2Yfyaj0dg92Lrm8B_DI1AKpHF2RXlB8XaPU3MD0jcENYqNu_WorXowc2k-tojhPmXvU8qCAIxsS2CorV1HTJm4JAJN4j62bTUeHA-QKK_Ut6qjxKk4Ew9y9eAbjnI6kFLDZpzl8OzC_7JBmTPejkpTejSAgzttg\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"45416\",\"timestamp\":1713788487}}}","req_id":16,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Sent response.","req_id":16,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.659358,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJIU2FQZlFMOENKRUtuZWI4MHdfby1tUFdIcEN3T0pGMU12YjhYQ3Z6d0gwIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.EbGIONqLIBngcv6uU2VmEIpjD8XKv8E5nB-xUx-sDpy2lxIJYE6qOgKC2_PvASOmgj7m7Y-v99rWZtezXfn6DJSiSGpG5F_aM3b7AHO8f2-L0c-0s8LCCdsjbufGgz1Ixvs1FL3bL9CUarWHdB79wtNMoZe2Z2mqkJ2nMcmLJtoBkOg5_CEJfMpK3zlWhEHKW82kPeWwDCXHE7scrEQ4EWMvMmaDEwey94YIldPetJ2fgBtNFdGf2NeV_KF24u2qo0mvcR0Uq406AJiYfyD4zGFI_ZXRWbozYAvOovk7FED4Wn477h7C2NvWhyDEbtQYRdJRZJxFISuIvj-8Y6nivg\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"29815\",\"timestamp\":1713788487}}}","req_id":17,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Sent response.","req_id":17,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.703012,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJfckZmU3lCZUQ3WWNrRE4tN3dnQ0lJa2NGZzR4YmQ3bi1lVFRWaG9DRDhFIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.tr0JSsM65uSXZzcWv9zPPJnES4TRIwWp0Jwx91oEghOE0Tk-h0Wl1PU2T2CJnA4aZPtQajpwPoi_c1-9LTu6tG7K_Le1c-a9oHAvngQObnfGfRYpyLYone6jV-dkpUP4zvVIvvwncDhWz46C0lgwMEIULtd7edamk7VpeC3T5JKlnWDiGeU2SPt4Sy6rvZnC_r79nBxyK2WdY-IPsu_-psKRyIFbRxptefZnhxJ1A2pdIBQIzxXtQz3HosDexKuqUaCZ9y5ymC2fr1U8Sm53DAQLE-uizSgXR3uSxjrvQG9BRpj1DJ6XhVv-0S9iCNVMEnH37Ikk2haEB6Vk7TrTBg\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"27519\",\"timestamp\":1713788487}}}","req_id":18,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Sent response.","req_id":18,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.394846,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJpcWR4UC1pTnZYZWJud01qU1BpaldNWU5Xa282Qnd1dWx5QUpKSFpqaEhJIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.bJ7m6xp5jl1n-eH4fLX3BzMMSOlwjEFCZ0siVoo-lvyy-dpm7cJrptozZwRW1W7ocVKq-e-uU4fTigHIjE7lh7hnE2QBdSBKss2ahX1_pRqQiOxm6VpCfLmyo-VYmTCnKIMYlgZ0WWSPGJXFSRYlMdPbqywrZT_li_WSMGF1vYRDWQxN4DCMTh9nvgPdSJC8altig23V-XCcxvrr90sZwin-dPbKB8r9WCfiX_sAIw14lfMR3zKDRosjQZluTren6I9CZEYLZFkADUYs6wUB-K8LcN1YUf4Gpo1GN8G404IEZ_XbKVkVBlpYaBSjjE2hek1gapsVik-MBHvXjPK4Nw\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"1407\",\"timestamp\":1713788487}}}","req_id":19,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Sent response.","req_id":19,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.428742,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJlNnp3RE9WelZ5ZTVCeU52TGJFZzgzdXZQTUFLOGZaVmN3SWhfZU1ZaFg0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.BokaIY3bq_bPB7aniospxdsb4YH-J6G5qHzdtTaGW7XjaN6_eZrEFkqYXN1hYOnq29Yh3THG13DRDcMShoeWhxMeKh8PyuDMgizSniWWMGGakRx_3fSrzTPVqn6Z740p9T2OA6QxGw4ogqkhbRTxWtHE0OPB5SyXZgb6L17tz9I4RBZlYN0M21o2_hFz4n35RrYH98o5HDSg0zd5XydzGCeBS8kA8TXWCNc30QtXm6m1bDoDxv1S__jl_llFKzg7LceCWbaG7NoIkRbCdJ_jlBtPrMja5cubR8wnAGLJS2_AK-Tv1AHHvtUPiUDDYx1C8gCt_rLgla3Hv6a4N_0lUw\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"9692\",\"timestamp\":1713788487}}}","req_id":20,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56724","level":"info","msg":"Sent response.","req_id":20,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.430835,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5cTdWSlJDNEh2SnlzRDJHWkg0dFZ4c3hRWF90Mldfd0tBZ2pYcks2Mm5BIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.fssK2IuABTkt9Yhn4WEG6ljJcFOPa8kJV5CSD7WfyoL7BwfTV4fG-NfmWYcb9pKMcpQWI50j2dPo4tR2FosER8YfUq6fPqfkQTaWJJ-y_AjMPJd7VCENVToUGwoMU6BgfmyFop_oyJl5_Ga-orhuje4PrcrQYAiluD6BiHC0E5q-B_flnPB-u0qfC7tMECZ-DGWpbhyLqs8fmvegB3uDGFWPGHFoLsjL4wuqpBbwmJMeNJqwwdDEMqjR-ib22HExq_6dV1Xp-UQX9QJ7GW0boJDhmHdHmlkYlADZvp0jgCkVyBWoK1RK7NzaX11lkoxMBJQaBeFXZ9v2eez_D9_HBQ\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"2424\",\"timestamp\":1713788487}}}","req_id":21,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56712","level":"info","msg":"Sent response.","req_id":21,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.488067,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56732","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJuVHVNTzZ4RHF0LURsRUV5S2NfalFLc3pJeUpSUzgxamNEYkFBWlNDUjR3In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.GVvYk0fvr4TIZmUM97rLUBwldBq95I8GnEyPexzvb737xNdyq00tZYIEd8D1B43sxbIJPTbfDxuWWHCu1EpdR4Q6TXJxhjJBwwNqlWka8UeW7cyNi8vrUap0GFd0EisBnhWkPADOq4x3hUxf09sX3wwhb9vX90hqgVP0O1PYv0Ekmgpr2OOJQvaRHVENy8Cb0APTrt9xWK1E91XX3LdncT-9IEd6LqR47RutUYXNTqsqwO873Jiuokv0S65LrxOD0ntBQLd6789P-j6hjETx9O_SfENNUJlp8Mg4Y43mnExCMDXFQBS339-_j4pfFcPM-kMzTiF1z-t0CTo80fz0uA\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"10655\",\"timestamp\":1713788487}}}","req_id":22,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:21:27Z"}
{"client_addr":"10.42.0.12:56732","level":"info","msg":"Sent response.","req_id":22,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.839061,"resp_status":200,"time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Opened storage transaction (376).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Closing storage transaction (376).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Waiting 2.912036192s before next download/retry.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Opened storage transaction (377).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Closing storage transaction (377).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Waiting 3.403016657s before next download/retry.","time":"2024-04-22T12:21:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Opened storage transaction (378).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Closing storage transaction (378).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Waiting 1.741077767s before next download/retry.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Opened storage transaction (379).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Closing storage transaction (379).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Waiting 3.769837543s before next download/retry.","time":"2024-04-22T12:21:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:31Z"}
{"level":"debug","msg":"Opened storage transaction (380).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:31Z"}
{"level":"debug","msg":"Closing storage transaction (380).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:31Z"}
{"level":"debug","msg":"Waiting 1.880805367s before next download/retry.","time":"2024-04-22T12:21:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Opened storage transaction (381).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Closing storage transaction (381).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Waiting 1.058226088s before next download/retry.","time":"2024-04-22T12:21:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Opened storage transaction (382).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Closing storage transaction (382).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Waiting 2.327389841s before next download/retry.","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Opened storage transaction (383).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Closing storage transaction (383).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Waiting 10.280654727s before next download/retry.","time":"2024-04-22T12:21:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Opened storage transaction (384).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Closing storage transaction (384).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Waiting 3.968078137s before next download/retry.","time":"2024-04-22T12:21:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Opened storage transaction (385).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Closing storage transaction (385).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Waiting 2.502431912s before next download/retry.","time":"2024-04-22T12:21:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Opened storage transaction (386).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Closing storage transaction (386).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Waiting 2.530443126s before next download/retry.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Opened storage transaction (387).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Closing storage transaction (387).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Waiting 3.661204634s before next download/retry.","time":"2024-04-22T12:21:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Opened storage transaction (388).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Closing storage transaction (388).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Waiting 2.98829064s before next download/retry.","time":"2024-04-22T12:21:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Opened storage transaction (389).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Closing storage transaction (389).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:42Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Waiting 3.765766178s before next download/retry.","time":"2024-04-22T12:21:42Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Opened storage transaction (390).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Closing storage transaction (390).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Waiting 2.787855687s before next download/retry.","time":"2024-04-22T12:21:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:44Z"}
{"level":"debug","msg":"Opened storage transaction (391).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:44Z"}
{"level":"debug","msg":"Closing storage transaction (391).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:44Z"}
{"level":"debug","msg":"Waiting 6.183027961s before next download/retry.","time":"2024-04-22T12:21:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Opened storage transaction (392).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Closing storage transaction (392).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Waiting 3.067140739s before next download/retry.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Opened storage transaction (393).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Closing storage transaction (393).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Waiting 1.43824953s before next download/retry.","time":"2024-04-22T12:21:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Opened storage transaction (394).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Closing storage transaction (394).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Waiting 1.521973998s before next download/retry.","time":"2024-04-22T12:21:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Opened storage transaction (395).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Closing storage transaction (395).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Waiting 2.058235815s before next download/retry.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Opened storage transaction (396).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Closing storage transaction (396).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Waiting 2.983874838s before next download/retry.","time":"2024-04-22T12:21:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:50Z"}
{"level":"debug","msg":"Opened storage transaction (397).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:50Z"}
{"level":"debug","msg":"Closing storage transaction (397).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:50Z"}
{"level":"debug","msg":"Waiting 2.758379303s before next download/retry.","time":"2024-04-22T12:21:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Opened storage transaction (398).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Closing storage transaction (398).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Waiting 3.103363442s before next download/retry.","time":"2024-04-22T12:21:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Opened storage transaction (399).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Closing storage transaction (399).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Waiting 1.343559535s before next download/retry.","time":"2024-04-22T12:21:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Opened storage transaction (400).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Closing storage transaction (400).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Waiting 2.755703984s before next download/retry.","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Opened storage transaction (401).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Closing storage transaction (401).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Waiting 2.045493023s before next download/retry.","time":"2024-04-22T12:21:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:54Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:54Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Opened storage transaction (402).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Closing storage transaction (402).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:54Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Waiting 3.689597103s before next download/retry.","time":"2024-04-22T12:21:54Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Opened storage transaction (403).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Closing storage transaction (403).","name":"data","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Waiting 4.409520351s before next download/retry.","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Opened storage transaction (404).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Closing storage transaction (404).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Waiting 2.164647709s before next download/retry.","time":"2024-04-22T12:21:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Opened storage transaction (405).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Closing storage transaction (405).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Waiting 1.584103969s before next download/retry.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Opened storage transaction (406).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Closing storage transaction (406).","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Waiting 3.948523365s before next download/retry.","time":"2024-04-22T12:21:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:21:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:21:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:21:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Opened storage transaction (407).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Closing storage transaction (407).","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Waiting 2.470480643s before next download/retry.","time":"2024-04-22T12:21:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:00Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:00Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:00Z"}
{"level":"debug","msg":"Opened storage transaction (408).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:00Z"}
{"level":"debug","msg":"Closing storage transaction (408).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:00Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:00Z"}
{"level":"debug","msg":"Waiting 13.251091178s before next download/retry.","time":"2024-04-22T12:22:00Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Opened storage transaction (409).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Closing storage transaction (409).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Waiting 1.254574513s before next download/retry.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Opened storage transaction (410).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Closing storage transaction (410).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Waiting 2.605052632s before next download/retry.","time":"2024-04-22T12:22:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Opened storage transaction (411).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Closing storage transaction (411).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Waiting 2.845043041s before next download/retry.","time":"2024-04-22T12:22:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Opened storage transaction (412).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Closing storage transaction (412).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Waiting 2.117056612s before next download/retry.","time":"2024-04-22T12:22:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Opened storage transaction (413).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Closing storage transaction (413).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Waiting 2.150120173s before next download/retry.","time":"2024-04-22T12:22:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Opened storage transaction (414).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Closing storage transaction (414).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Waiting 3.082290339s before next download/retry.","time":"2024-04-22T12:22:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Opened storage transaction (415).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Closing storage transaction (415).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Waiting 1.764085449s before next download/retry.","time":"2024-04-22T12:22:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Opened storage transaction (416).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Closing storage transaction (416).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Waiting 2.620680911s before next download/retry.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Opened storage transaction (417).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Closing storage transaction (417).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Waiting 1.687629505s before next download/retry.","time":"2024-04-22T12:22:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Opened storage transaction (418).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Closing storage transaction (418).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Waiting 2.492656891s before next download/retry.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Opened storage transaction (419).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Closing storage transaction (419).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Waiting 2.348500538s before next download/retry.","time":"2024-04-22T12:22:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:13Z"}
{"level":"debug","msg":"Opened storage transaction (420).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:13Z"}
{"level":"debug","msg":"Closing storage transaction (420).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:13Z"}
{"level":"debug","msg":"Waiting 1.287937053s before next download/retry.","time":"2024-04-22T12:22:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Opened storage transaction (421).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Closing storage transaction (421).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Waiting 2.846742271s before next download/retry.","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Opened storage transaction (422).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Closing storage transaction (422).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Waiting 13.386674111s before next download/retry.","time":"2024-04-22T12:22:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Opened storage transaction (423).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Closing storage transaction (423).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Waiting 2.843539935s before next download/retry.","time":"2024-04-22T12:22:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Opened storage transaction (424).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Closing storage transaction (424).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Waiting 1.126843763s before next download/retry.","time":"2024-04-22T12:22:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Opened storage transaction (425).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Closing storage transaction (425).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Waiting 2.629196372s before next download/retry.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Opened storage transaction (426).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Closing storage transaction (426).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Waiting 1.139857832s before next download/retry.","time":"2024-04-22T12:22:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Opened storage transaction (427).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Closing storage transaction (427).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Waiting 2.222367074s before next download/retry.","time":"2024-04-22T12:22:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Opened storage transaction (428).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Closing storage transaction (428).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Waiting 3.308381792s before next download/retry.","time":"2024-04-22T12:22:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Opened storage transaction (429).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Closing storage transaction (429).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Waiting 1.751996622s before next download/retry.","time":"2024-04-22T12:22:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:23Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:23Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Opened storage transaction (430).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Closing storage transaction (430).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:23Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Waiting 2.066368426s before next download/retry.","time":"2024-04-22T12:22:23Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Opened storage transaction (431).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Closing storage transaction (431).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Waiting 3.544556554s before next download/retry.","time":"2024-04-22T12:22:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Opened storage transaction (432).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Closing storage transaction (432).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Waiting 2.606205964s before next download/retry.","time":"2024-04-22T12:22:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Opened storage transaction (433).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Closing storage transaction (433).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Waiting 2.068534702s before next download/retry.","time":"2024-04-22T12:22:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Opened storage transaction (434).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Closing storage transaction (434).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Waiting 6.616507862s before next download/retry.","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Opened storage transaction (435).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Closing storage transaction (435).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Waiting 1.704333561s before next download/retry.","time":"2024-04-22T12:22:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Opened storage transaction (436).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Closing storage transaction (436).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Waiting 2.86843387s before next download/retry.","time":"2024-04-22T12:22:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:30Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:30Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Opened storage transaction (437).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Closing storage transaction (437).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:30Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Waiting 1.446773426s before next download/retry.","time":"2024-04-22T12:22:30Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Opened storage transaction (438).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Closing storage transaction (438).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Waiting 2.493528893s before next download/retry.","time":"2024-04-22T12:22:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Opened storage transaction (439).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Closing storage transaction (439).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Waiting 2.4256593s before next download/retry.","time":"2024-04-22T12:22:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Opened storage transaction (440).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Closing storage transaction (440).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Waiting 1.696160916s before next download/retry.","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Opened storage transaction (441).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Closing storage transaction (441).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Waiting 6.118158525s before next download/retry.","time":"2024-04-22T12:22:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Opened storage transaction (442).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Closing storage transaction (442).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Waiting 2.404830553s before next download/retry.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Opened storage transaction (443).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Closing storage transaction (443).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Waiting 1.847547451s before next download/retry.","time":"2024-04-22T12:22:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Opened storage transaction (444).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Closing storage transaction (444).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Waiting 2.171887514s before next download/retry.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Opened storage transaction (445).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Closing storage transaction (445).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Waiting 2.153175953s before next download/retry.","time":"2024-04-22T12:22:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:39Z"}
{"level":"debug","msg":"Opened storage transaction (446).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:39Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Closing storage transaction (446).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Waiting 1.20674852s before next download/retry.","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Opened storage transaction (447).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Closing storage transaction (447).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Waiting 3.618463602s before next download/retry.","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Opened storage transaction (448).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:40Z"}
{"level":"debug","msg":"Closing storage transaction (448).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Waiting 6.9838664s before next download/retry.","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Opened storage transaction (449).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Closing storage transaction (449).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Waiting 1.809524916s before next download/retry.","time":"2024-04-22T12:22:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Opened storage transaction (450).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Closing storage transaction (450).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Waiting 1.386054703s before next download/retry.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Opened storage transaction (451).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Closing storage transaction (451).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Waiting 2.66265249s before next download/retry.","time":"2024-04-22T12:22:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:44Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:44Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Opened storage transaction (452).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Closing storage transaction (452).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:44Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Waiting 1.239119848s before next download/retry.","time":"2024-04-22T12:22:44Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:45Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Opened storage transaction (453).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Closing storage transaction (453).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:45Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Waiting 2.194631134s before next download/retry.","time":"2024-04-22T12:22:45Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Opened storage transaction (454).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Closing storage transaction (454).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Waiting 3.49366703s before next download/retry.","time":"2024-04-22T12:22:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Opened storage transaction (455).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Closing storage transaction (455).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Waiting 1.369456288s before next download/retry.","time":"2024-04-22T12:22:47Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:48Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:48Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:48Z"}
{"level":"debug","msg":"Opened storage transaction (456).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:48Z"}
{"level":"debug","msg":"Closing storage transaction (456).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:48Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:48Z"}
{"level":"debug","msg":"Waiting 2.147790746s before next download/retry.","time":"2024-04-22T12:22:48Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Opened storage transaction (457).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Closing storage transaction (457).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Waiting 1.057038145s before next download/retry.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Opened storage transaction (458).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Closing storage transaction (458).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Waiting 3.642481536s before next download/retry.","time":"2024-04-22T12:22:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Opened storage transaction (459).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Closing storage transaction (459).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Waiting 7.117312165s before next download/retry.","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Opened storage transaction (460).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Closing storage transaction (460).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Waiting 1.304572351s before next download/retry.","time":"2024-04-22T12:22:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Opened storage transaction (461).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Closing storage transaction (461).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Waiting 2.069092316s before next download/retry.","time":"2024-04-22T12:22:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Opened storage transaction (462).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Closing storage transaction (462).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Waiting 3.311446791s before next download/retry.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:53Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:53Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Opened storage transaction (463).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Closing storage transaction (463).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Waiting 2.981018437s before next download/retry.","time":"2024-04-22T12:22:53Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Opened storage transaction (464).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Closing storage transaction (464).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Waiting 2.581809886s before next download/retry.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:56Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:56Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Opened storage transaction (465).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Closing storage transaction (465).","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Waiting 3.858924072s before next download/retry.","time":"2024-04-22T12:22:56Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:57Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:57Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:57Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:57Z"}
{"level":"debug","msg":"Opened storage transaction (466).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:57Z"}
{"level":"debug","msg":"Closing storage transaction (466).","name":"data","plugin":"bundle","time":"2024-04-22T12:22:57Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:22:57Z"}
{"level":"debug","msg":"Waiting 5.788554301s before next download/retry.","time":"2024-04-22T12:22:57Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:22:59Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:22:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:22:59Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Opened storage transaction (467).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Closing storage transaction (467).","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:59Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Waiting 1.63618789s before next download/retry.","time":"2024-04-22T12:22:59Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:00Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:00Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Opened storage transaction (468).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Closing storage transaction (468).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:00Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Waiting 2.871489735s before next download/retry.","time":"2024-04-22T12:23:00Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Opened storage transaction (469).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Closing storage transaction (469).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Waiting 2.430662726s before next download/retry.","time":"2024-04-22T12:23:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Opened storage transaction (470).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Closing storage transaction (470).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Waiting 11.887720296s before next download/retry.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Opened storage transaction (471).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Closing storage transaction (471).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Waiting 1.865359312s before next download/retry.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:03Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:03Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Opened storage transaction (472).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Closing storage transaction (472).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Waiting 2.251038508s before next download/retry.","time":"2024-04-22T12:23:03Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Opened storage transaction (473).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Closing storage transaction (473).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Waiting 2.648270911s before next download/retry.","time":"2024-04-22T12:23:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Opened storage transaction (474).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Closing storage transaction (474).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Waiting 3.223500127s before next download/retry.","time":"2024-04-22T12:23:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Opened storage transaction (475).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Closing storage transaction (475).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Waiting 2.441427586s before next download/retry.","time":"2024-04-22T12:23:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:09Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Opened storage transaction (476).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Closing storage transaction (476).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:09Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Waiting 2.050052781s before next download/retry.","time":"2024-04-22T12:23:09Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Opened storage transaction (477).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Closing storage transaction (477).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:10Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Waiting 2.196121057s before next download/retry.","time":"2024-04-22T12:23:10Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Opened storage transaction (478).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Closing storage transaction (478).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Waiting 3.198233097s before next download/retry.","time":"2024-04-22T12:23:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:12Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:12Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Opened storage transaction (479).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Closing storage transaction (479).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:12Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Waiting 2.046313558s before next download/retry.","time":"2024-04-22T12:23:12Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Opened storage transaction (480).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Closing storage transaction (480).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Waiting 3.991544001s before next download/retry.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Opened storage transaction (481).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Closing storage transaction (481).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Waiting 1.761206955s before next download/retry.","time":"2024-04-22T12:23:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:15Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:15Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:15Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:15Z"}
{"level":"debug","msg":"Opened storage transaction (482).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:15Z"}
{"level":"debug","msg":"Closing storage transaction (482).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:15Z"}
{"level":"debug","msg":"Waiting 14.160701551s before next download/retry.","time":"2024-04-22T12:23:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Opened storage transaction (483).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Closing storage transaction (483).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Waiting 1.120985755s before next download/retry.","time":"2024-04-22T12:23:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Opened storage transaction (484).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Closing storage transaction (484).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Waiting 2.852833394s before next download/retry.","time":"2024-04-22T12:23:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:18Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:18Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Opened storage transaction (485).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Closing storage transaction (485).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:18Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Waiting 3.410706657s before next download/retry.","time":"2024-04-22T12:23:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Opened storage transaction (486).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Closing storage transaction (486).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Waiting 1.678272503s before next download/retry.","time":"2024-04-22T12:23:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Opened storage transaction (487).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Closing storage transaction (487).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Waiting 2.895601836s before next download/retry.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Opened storage transaction (488).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Closing storage transaction (488).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Waiting 1.954379381s before next download/retry.","time":"2024-04-22T12:23:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Opened storage transaction (489).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Closing storage transaction (489).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Waiting 2.775993918s before next download/retry.","time":"2024-04-22T12:23:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:25Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:25Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Opened storage transaction (490).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Closing storage transaction (490).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:25Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Waiting 3.810510947s before next download/retry.","time":"2024-04-22T12:23:25Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:27Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:27Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Opened storage transaction (491).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Closing storage transaction (491).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:27Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Waiting 1.884660301s before next download/retry.","time":"2024-04-22T12:23:27Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:28Z"}
{"level":"debug","msg":"Opened storage transaction (492).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:28Z"}
{"level":"debug","msg":"Closing storage transaction (492).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Waiting 2.429613679s before next download/retry.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Opened storage transaction (493).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Closing storage transaction (493).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Waiting 2.090829079s before next download/retry.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:29Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:29Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Opened storage transaction (494).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Closing storage transaction (494).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Waiting 2.288451243s before next download/retry.","time":"2024-04-22T12:23:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Opened storage transaction (495).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Closing storage transaction (495).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Waiting 2.831222025s before next download/retry.","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJnZ2ZxY3hzRm90Y2VIZHIwZmtrVGE4b2JBRm1xZElscTZaTGZ0ZXdxaEVNIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.D_kqQnksqAb_Ob0uqx56tQ2S7miNwHb3Sst-pv5VRFfLv8D7e0j9T8cXtSRAHBbMRiCJ5HHX1h-_Lv6JO2ecQp8thh5xQgFWFyotf5JXCJmd-PKYCsJIXZztC2DF93CuUIugu26a62yHqb3LE93xUr2IiDSrLLzaBMHH1T4wbpL5xSuPt39LxxwXFKRuHPf4lcdPUjmdNXMca7zVjmIvseDUsV4b7M1-2S9jvx4WGAnhUdEZGlCd0b66duROP-3vuLBhM-hNVXC0rkwXfsILgg10f98hTUWg7LPeWKOI9nMY8ECA9QxcK1W2b28V7PalT70eqxx03KOQAZ6AvmEIQQ\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"11964\",\"timestamp\":1713788611}}}","req_id":23,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Sent response.","req_id":23,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.183027,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Opened storage transaction (497).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Closing storage transaction (497).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Waiting 2.382414127s before next download/retry.","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50912","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJnQUxXc1JsZ2N0MUJxbnRZQ2xCZEtGTDY3ZEc0aEdCTWxOVWkzVzdCV2drIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.c2NuBoHktd_Z4vp3O5TTbaKiPx4gPpS6vaUcE4aFHr9UUKZ2XGqyc8cqtT7v4azrQb5PU02hxQC2k8offILNVNj1E0fwvue2Y8-la-2KeNzufNIo1_XRpTUHgQITKr1ay8ZKjmi-jRfQgNfPojWWUxgqy7RzBCu2scKcq9ga3N7pEVGCNi-5jJPkYOQtMkmUheZkmMrLy_tuXr7o6zedyE6gysg9ToxLR_2_etMBgZZ5gn5GjETZ1N2EzLN_IWdZgOEz0Xstx0Y9yrT6t3w8dbqn3d-wDRCR-gC380odeznNA4Gm8pPH1cAiAYZwxu2F9Vf08V08p18Qz0YnJeO9Ng\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"8019\",\"timestamp\":1713788611}}}","req_id":24,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50912","level":"info","msg":"Sent response.","req_id":24,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.305644,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Opened storage transaction (499).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI1ZC1jSTBBRGdtb1RlOVIxajdGS3ZRMm1QZTVOeENyeHdBVlNyMGk1YndjIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.lR4GtVZsFiACEnxf-rukL7OCmT1uLWS2fRhE1S9BsC6Yo8TxjhlpZmm5IQw3-MJM017rzi9gvdCB3SCGgWiMq174P7geWALZQ7FxAZ2_-KT8xT8mpH9fW3pNd3iWbuRmBr_bUsteV_12Jr8zqhjyYWzZ1A5eqiqRYGXn2FjTmdfZ5DM_PMqG1FN3UnZCQq0AWMKLGIXnx0-1Dbbue2t1xHHzeYA6sr9yNBUYQztaYfzUTEhToC77kBfAfXAuMNB00geIGvgx_Tjwr5i4ytzTFULhSUNhSS9f7dFqNY2ppL-3e63krOw1yfOog4tEVfodt46dr5tm9_ZgsvyxCJtKpw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"2540\",\"timestamp\":1713788611}}}","req_id":25,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Sent response.","req_id":25,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.955095,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Closing storage transaction (499).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Waiting 1.113562733s before next download/retry.","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJHd213aXZvYVBDV0lRY0JZRlYtZG0xUmdTNjV4TzZXdWoxclNyYVh0UDVrIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.j9K4CLDwkqAQfOwpAbi8iKlgnXQSU__uDxR4uZAHmcU3a-Wj6LDqEEMmURDAaViz04gTU4XPTUlxnRFy1dmfrVUT6S1Gi98nswCMuKMBVrcjDOwFdY61H4guBN28v6Ze2qjsb_vlDCsF4MU6NkgCwwgLsiYiZakNGq32vHfCwpYoXqJIPbR4fuk75XkHj0Lws5XlLG9ZS-1rPByEVi9kQkyXWmkFiZV70eSwPK8XNzL5aMhgjCypwE0Jw58PLvmdRfD2nxlaTWPQ2yKiBriWqkZ5VDgKUmvra4DfokGKB6kZ7J7ov8fYfGmMPG-ppvGTRJ9oboAY9xlNfnxMPLCP7A\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"26638\",\"timestamp\":1713788611}}}","req_id":26,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Sent response.","req_id":26,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.065718,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50946","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJvYmFKV0l4Rk9kSndmN2RhUlNXcEhrVGFsVW1tUlFvdGlzWjk4Z3BRbGg4In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.vMIhav6uVbbLdriUof1FQ8Q9UlecxIC3nm0bCeR8CpFPG4R3g1A-eACTP6c-enWz3idVqVXXOeDh12ccETopciFdkYy_3_7R2sSblaEd4LFmHW5B1zqmVdHBtpEPP1TNqOyS5Pwp2gFJm-OySRhwZFLLRp0qdOc-l4gAktCCTMSCTSaiuCIbDqCxFcvCGwUwzxZDg7jH5EG-lyWIpETU_lbsg2jxwOJh-x0K6toaH5S0Fq41yheXp7_Jikzbqhp4SrwWUWB87y6vZkWPaOgDlbgw68ri_O9V5JaCJTGajHmI5u1vajLRFCxmK81E4LNNK9p4MnOHbVQaL_wQxk8xLQ\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"55662\",\"timestamp\":1713788611}}}","req_id":27,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50946","level":"info","msg":"Sent response.","req_id":27,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.146918,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJDRWxOM2xZUURCakJjUkY2blAxdTRoVUpDU196VjhVbFBwQzVoRDRDU1NnIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.g4g6Cbk9i4_ZsvAbDaCXVzmVKMSDLu6QOpqhX5IccWBHgKTSYwy5wGmHsCTTijfeHApVfRU2W80tWOTfwJ8qlQwcnJB3TjyCG_jOLCcBoTT6Eq1BkM_8DyeTu7BggYp_moEJTAfH34qgih7PAXAW3sIFojkVs3A7jHJMNYkSCLZSUadZIRfKMpC-1JIZOShiIbT3iuIp89nD34sAUWaAUDl53d-_k6_TcEsfgb39ZIDjM4BVaQ_YK48BMcDkHV2R3EdRSyu-AW-UqkJgqWjYFVaWv77Ofgoh5xpsq6VfiAMmh76s4M7Wpy77vcFO2eYtEU2QeWAJ4Ua7lV5ZM8Iivg\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"14353\",\"timestamp\":1713788611}}}","req_id":28,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Sent response.","req_id":28,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.511389,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJlTmpTNWc2RDYyZUhGcUVqdXd5aXo4OGV5ektsYWNjTTFIV1hUR09ySVE0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.llHJBcCFovIrd_x3TqWrGWIHguRmUJoCFhdL4-yFDKr5U99mv1d9iM3Kh0ywc2S0cL4TliaZmP8TEbCe0k3NjH3GtQOBvxHFuzKyMTBonO66R8lMJ2O-o_GNvayCozxhPU3PFd3tRUEnZzE0HxPk2VT6IuDu15ubWSu97CDkZM6kXRlVBFv7JRJNPMG_xPL2uSULas40bVqOdVCGDbRwU6qu75vu-B4kfU0wVI9qaevaSV7PnGjeSHn7Zqe4a6dxT7-3wIMvdrIZqF2W59Gd52PEnoMDUZ0_KLT79FKuBBYZUJEDsI2VwnsumNy5VLO3aVWlxqGs8L4Iqvhy6b4aSw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"30631\",\"timestamp\":1713788611}}}","req_id":29,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Sent response.","req_id":29,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.835997,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50950","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIzMUEwM2VtS0ZiUTVSUDdkQm1wR296U0pIZ2hsTm9ydnBjb3AwcmltX1hBIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.EtLZTsTn1rpL2a1jWv6TLPEQPTE-yJEIPGAMWQgHwGdHsOazcF5h0vX0RNTNgpk6mcn_9tXOQZRK4Aqev5kArFK7dfbQgV2MxD044NRxOf8OJJeRnnmWhCpTKbHNRykS5o-5piDs_9LNYNAUoJaae2b9he8K0vOkCWOj8uILKkclqwXiuF6xqH0BBHi-5cJd4aFcSGjmzrP_cpK8FwMDxR8SwTApzc6k8_5_GfV5SYlxA0G073Dr5aC5lQ5vagYDoSMWD7Cvd_7EzUuS9vjcfWuaxyiEm7mE1kydjqcwy7RP43ONmbuDpR1ESBWejmqVLuL4P6IZyggMxBvMI__wqA\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"36310\",\"timestamp\":1713788611}}}","req_id":30,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50950","level":"info","msg":"Sent response.","req_id":30,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.810588,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJYQTR0cVdRYnNXbW96dzFCMHUyVDdZUlR6QU94WGhzanM5YzQ4ZHI4bGU0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.cPeGLJZ8UQNQ_cLBjlOomFquL8AK2hsndhsElvG-496sK_GA9oUyZBrIJqnqQpkyDtgQqlTGzQc5a1Jxnyq06BVl02MVqFhVS0RjbDUOJadzxOYLbGIoLQy850zLx2v1unzJNtn150ns51e1DOG8H0Z-cxE4KR62ROqLzMlisoTQMATkwmE6Gha9REm-bZigjBmRUZDXmniKFTnPTlnLlhndgPtKdJHT6sBa6C-zU80FPEcWQoJ5SuO583x80SPE8yC6s1KB3Si0wJLQIHSTp0P_bL0wa3MxTDHq9qqFPEJ0oUMaCyZ0WJsMgoRq5COo6xWH5Y4IMYNU8jEIGfFWTw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"61903\",\"timestamp\":1713788611}}}","req_id":31,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Sent response.","req_id":31,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.887115,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJtTmU4SDdwbV81aHZjR0hHY2hqUVlBSnV0Y2s0X1d2dHVweTJYRW94b1pvIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.ktc6StRsd1fIFf2U2ElOEChHsQfte_6pg_YJmGyKAzTv1aKxmHhc3b31ZUMzdBc1k4VvAASUW9ykdVIKk9pni2Pn1KdDfNj5LW8klAZ89525NV_JNWqZtQACBmv0VylCf4r81Izs9A4eVeBnlwf_6OKcHm5nhJysEhXkkBY3TPrKwPgboBUNnQcepNuEW8xzZY16VgTbQq4wzDM6yqMGX_zPK9HXtrVaKBJS8iv8sCC_hnsYchSe9FmZ7yJzIpZoT915bAU25epvNwwjdCEyEfrx4DkLTwSNX_ajnb1F6idwhzdKu9CBAYIjIhD5higqCcVTLEsYLYLHJoL7quZedQ\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"60957\",\"timestamp\":1713788611}}}","req_id":32,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Sent response.","req_id":32,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.932044,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJPS0NJNjZTX1N6Wmp4YTBQc2ZDdzE2LTl1aTBlM1ZScHFDSFo4V3VDOFhNIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.5WLdcnHy5AUGzGpDsOhedXJ0E_kL5OfAR3JjCbDru9lZh2QvsfliTkJ-ZsB1wjEu_-sJh-gBymMY_em9eYCq84v6zkTAOvAvUKcCjqGx-ilfrxGaMd1IFRjwyXJzpXUBoGStT5qQUlsAzcLXCTz4iUyHYqIzQrnoL7HsfQ7RDlHTIZPXHO6O39iExFeepKu5lXzxU3s0QuARpfhGR4Kj1KE14e1e26MZzC_GLMf4_k9rdzOtCyncTKIgtnK5lDShPvMEMjajtUP1g3pWs3ZtEVbhtLR-oVSMLuISNJHo_YY3hp_Zqb_Tx9X6xLtVzYi5P4cojvnkmRD1NjT7U4bAiA\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"60796\",\"timestamp\":1713788611}}}","req_id":33,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:23:31Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Sent response.","req_id":33,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.739412,"resp_status":200,"time":"2024-04-22T12:23:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:32Z"}
{"level":"debug","msg":"Opened storage transaction (509).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:32Z"}
{"level":"debug","msg":"Closing storage transaction (509).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:32Z"}
{"level":"debug","msg":"Waiting 5.409231779s before next download/retry.","time":"2024-04-22T12:23:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Opened storage transaction (510).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Closing storage transaction (510).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Waiting 3.76946904s before next download/retry.","time":"2024-04-22T12:23:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Opened storage transaction (511).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Closing storage transaction (511).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Waiting 1.231309707s before next download/retry.","time":"2024-04-22T12:23:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Opened storage transaction (512).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Closing storage transaction (512).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Waiting 1.768268698s before next download/retry.","time":"2024-04-22T12:23:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Opened storage transaction (513).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Closing storage transaction (513).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Waiting 2.575260981s before next download/retry.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Opened storage transaction (514).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Closing storage transaction (514).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Waiting 2.109199994s before next download/retry.","time":"2024-04-22T12:23:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:38Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:38Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:38Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:38Z"}
{"level":"debug","msg":"Opened storage transaction (515).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:38Z"}
{"level":"debug","msg":"Closing storage transaction (515).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:38Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:38Z"}
{"level":"debug","msg":"Waiting 1.428245676s before next download/retry.","time":"2024-04-22T12:23:38Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Opened storage transaction (516).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Closing storage transaction (516).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Waiting 4.229445776s before next download/retry.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Opened storage transaction (517).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Closing storage transaction (517).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Waiting 1.029544323s before next download/retry.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Opened storage transaction (518).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Closing storage transaction (518).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Waiting 3.459915455s before next download/retry.","time":"2024-04-22T12:23:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:40Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:40Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Opened storage transaction (519).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Closing storage transaction (519).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:40Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Waiting 2.882855378s before next download/retry.","time":"2024-04-22T12:23:40Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Opened storage transaction (520).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Closing storage transaction (520).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Waiting 3.294018698s before next download/retry.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Opened storage transaction (521).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Closing storage transaction (521).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Waiting 1.932522439s before next download/retry.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Opened storage transaction (522).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Closing storage transaction (522).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Waiting 1.594111098s before next download/retry.","time":"2024-04-22T12:23:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:45Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Opened storage transaction (523).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Closing storage transaction (523).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Waiting 5.879536084s before next download/retry.","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:45Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:45Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Opened storage transaction (524).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Closing storage transaction (524).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Waiting 1.182383476s before next download/retry.","time":"2024-04-22T12:23:45Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Opened storage transaction (525).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Closing storage transaction (525).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Waiting 3.351901635s before next download/retry.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Opened storage transaction (526).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Closing storage transaction (526).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Waiting 2.316061049s before next download/retry.","time":"2024-04-22T12:23:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:49Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:49Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Opened storage transaction (527).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Closing storage transaction (527).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:49Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Waiting 2.123181729s before next download/retry.","time":"2024-04-22T12:23:49Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:50Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:50Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Opened storage transaction (528).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Closing storage transaction (528).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:50Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Waiting 2.576094834s before next download/retry.","time":"2024-04-22T12:23:50Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Opened storage transaction (529).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Closing storage transaction (529).","name":"data","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Waiting 10.358782633s before next download/retry.","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:51Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:51Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Opened storage transaction (530).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Closing storage transaction (530).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Waiting 1.467101752s before next download/retry.","time":"2024-04-22T12:23:51Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:52Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:52Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:52Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Opened storage transaction (531).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Closing storage transaction (531).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Waiting 2.818614651s before next download/retry.","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Opened storage transaction (532).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Closing storage transaction (532).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Waiting 2.314036742s before next download/retry.","time":"2024-04-22T12:23:52Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Opened storage transaction (533).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Closing storage transaction (533).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Waiting 3.063795678s before next download/retry.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:55Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:55Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Opened storage transaction (534).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Closing storage transaction (534).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Waiting 2.923916907s before next download/retry.","time":"2024-04-22T12:23:55Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Opened storage transaction (535).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Closing storage transaction (535).","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Waiting 3.512401271s before next download/retry.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:23:58Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:23:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:23:58Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Opened storage transaction (536).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Closing storage transaction (536).","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Waiting 2.44340169s before next download/retry.","time":"2024-04-22T12:23:58Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Opened storage transaction (537).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Closing storage transaction (537).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Waiting 1.76504986s before next download/retry.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Opened storage transaction (538).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Closing storage transaction (538).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Waiting 3.124814674s before next download/retry.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:01Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:01Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Opened storage transaction (539).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Closing storage transaction (539).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Waiting 2.203931529s before next download/retry.","time":"2024-04-22T12:24:01Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:02Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:02Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Opened storage transaction (540).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Closing storage transaction (540).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:02Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Waiting 2.855020393s before next download/retry.","time":"2024-04-22T12:24:02Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Opened storage transaction (541).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Closing storage transaction (541).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Waiting 2.46553064s before next download/retry.","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:04Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:04Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Opened storage transaction (542).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Closing storage transaction (542).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Waiting 11.821645494s before next download/retry.","time":"2024-04-22T12:24:04Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:05Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:05Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Opened storage transaction (543).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Closing storage transaction (543).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:05Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Waiting 1.413094284s before next download/retry.","time":"2024-04-22T12:24:05Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:06Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:06Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Opened storage transaction (544).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Closing storage transaction (544).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:06Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Waiting 2.26944223s before next download/retry.","time":"2024-04-22T12:24:06Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:07Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:07Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Opened storage transaction (545).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Closing storage transaction (545).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:07Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Waiting 1.608312222s before next download/retry.","time":"2024-04-22T12:24:07Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:08Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:08Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Opened storage transaction (546).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Closing storage transaction (546).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:08Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Waiting 1.991896526s before next download/retry.","time":"2024-04-22T12:24:08Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:09Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:09Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Opened storage transaction (547).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Closing storage transaction (547).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:09Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Waiting 2.130932941s before next download/retry.","time":"2024-04-22T12:24:09Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:10Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:10Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:10Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:10Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:10Z"}
{"level":"debug","msg":"Opened storage transaction (548).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:10Z"}
{"level":"debug","msg":"Closing storage transaction (548).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Waiting 2.145487934s before next download/retry.","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:11Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:11Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Opened storage transaction (549).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Closing storage transaction (549).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Waiting 3.061293749s before next download/retry.","time":"2024-04-22T12:24:11Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:13Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:13Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Opened storage transaction (550).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Closing storage transaction (550).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:13Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Waiting 1.762241498s before next download/retry.","time":"2024-04-22T12:24:13Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Opened storage transaction (551).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Closing storage transaction (551).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Waiting 2.727859349s before next download/retry.","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:14Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:14Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Opened storage transaction (552).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:14Z"}
{"level":"debug","msg":"Closing storage transaction (552).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:15Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:15Z"}
{"level":"debug","msg":"Waiting 1.198782265s before next download/retry.","time":"2024-04-22T12:24:15Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Opened storage transaction (553).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Closing storage transaction (553).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Waiting 1.530192946s before next download/retry.","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:16Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:16Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Opened storage transaction (554).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Closing storage transaction (554).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Waiting 5.13565256s before next download/retry.","time":"2024-04-22T12:24:16Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Opened storage transaction (555).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Closing storage transaction (555).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Waiting 3.616757513s before next download/retry.","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:17Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:17Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Opened storage transaction (556).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Closing storage transaction (556).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:17Z"}
{"level":"debug","msg":"Waiting 1.933956655s before next download/retry.","time":"2024-04-22T12:24:17Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJxVDZOb19WRmZkVFNDTzhnLXNTbHJUbFBGMWhKbDZRLWVRSVQ0SVNWR0R3In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.X9kr6aFUSBxh2MduVuZmElJhuG_pNwSsdxwfU2tDpyogSOa2E83DzINX8td6fy9075sHlWP-yttJOrokrCycgZkQ6eQ6qAPrTe4uA4EzH6Yj0RXzBjMXnjXXajFD9VeJ8GWL1sVYWtDKT7BhxnXTUOuaDowzEnvQW89yH3XpJdlChau24kR35-mKNPicviZLme9SDXjMVqUnZXzLmu2YkMTqpyNVepwLX_dhK65pP8ii_W2mWo5J62QIP4z3Zh4rtqJP17cIPnbMGvBAsUgLwuIBbxTH586SeZeQFyC_Z2a58lqZLqpDwNjH4Had9ThAxCo_4oRUd6OFXrYdphqr8g\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"43934\",\"timestamp\":1713788658}}}","req_id":34,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Sent response.","req_id":34,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.441146,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJrTjFUbzR5WV9lSGRnM09Vc1hkZi1lblNoNTJLVjJtUXo5TTlUcTR5bnNZIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.sNlNszvWT-4P_QoOPm_j4v_VdgkPdEVoEqv0w_rsE4J4WTSc1-HbPKoowehph2X-OrSHLKhKzpAm9xGjo1bHuF7vC_P2yoWxOuxirT07y5_ra8Jf_wK2rrEavSZmRV5h9PxWIHQLV7E6G6cuy_y-7qHnCSYkYhjP3YTBHL2bxwaHI6HqFpW2FC00I4LKMVfzsRPTFbHT2n3Niqahz4otGXJWYz1FCvl9hLqIrP8ETmdjDEr3_oVG-AYdtAZnTSqkT8r_2k3qwJC9l7YlCguyGon_3dy41I5H0-HdGDqldeiJRTtWflASGzXZG6OWD2eEDnFhIcUdYhx05P_lbdUtyw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"42874\",\"timestamp\":1713788658}}}","req_id":35,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Sent response.","req_id":35,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.090276,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJiaWFYdmIxbkpmWUtGUDNKOEhlUkI4ejdhUVRFY0NyYVZxcVNpWk42ZW9ZIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.QPD0sCpyGNvohDTcRvRgdOF_nFewQiiUWbaxSVobn0ZnFKepxUqRh0gQC996uZZVeAY_IhZfeoa7SfR0mAoaedUH5NXJ1oxx_PQi3bSAqbdtxrZbFD2ycU9U6vycGiEdTWFmctQZbsoJLAeJ3ypHvZ6nKca933KkY9bmDnF8hQqrvy71kkIqY1_EQQ61e6LVVEPNPvCnHLIzVIfZ2FnHgGLFdLKPeFyvc4zXlqTNh4uFpwz_SzoWF40epoCGN8JJfj9lG4n08G6yqjtvoJKZh8duK9cTi3pydgAurUgywjJEkZvCMJZrfVsAFXmTqF1BVX9Qjq0v8S_ppVibglELZw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"29811\",\"timestamp\":1713788658}}}","req_id":36,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Sent response.","req_id":36,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.011264,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJuSm93QlhpMnpUU2xTR3dieTg0TzgxM2V1ZWN6Ykk4SWRrWWpxZ3J5VEMwIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.iShDeHS8riep-Ua3555xWRNVG8UCMXq_6tHYZrX0i2ADVP7tmnP4Y-DXTg_KvY-tyBLUdvumBwXvpjlJ8h59kgMzPqP-RnUXAI_WErYy1PyWkJrNl8sZuhur41gzgpHexf1q5aPb5onyyId9eWmDZJenXhWxeFpsC8wDn9kSAtGy32DgcPQDhkyVt6c_Wr0LuI4HBxh6H5S0BBK9EHjJA8tvqpZW3C5GaNJSGRTxEBpTXinkddRKim5TJ4reUQY6g7j20codhpuDVr7tX_txZpcdNXalWGc8DDDOA1HjgVd0Ko38p3_IxxB0E3_mSCRyJPKIqM7CL6BQLyPvsKhfag\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"35330\",\"timestamp\":1713788658}}}","req_id":37,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50936","level":"info","msg":"Sent response.","req_id":37,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.661141,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50912","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJFMWZ1VEYwbklPQU9CTGJERHljbHlvbXFxZlotQ1lOY2Z4QWRCWDJfSTFJIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.oha9cAMTfDEJkAh_ZZQsBy6yDIhOtrIXpA_Bb4r_Vv8T2Mq9Qwbb35lJ5HoNMCt9uJDwfY8BAnJ5_ZsvY_g5Led4JD9pUqYfAk3m--TpalHnLQAjsbTtha7mRiwr__42dl6KFPQamDNW6NvVOKG59nwLENS3SELuWVH0r21BdwvSlNcc3w0_-DlV71c82smV9kKfsD68CF_S_DP1cULfDbxRzAtPknZm_FHQEhIMTHDLn9qxSHdoqC-vJnMWXRKeqPHe5CSyr2aY_Sg8KssW6FAdf6Sl-obT8arftB-do4Rj0JHYZRhe7sHUhi0_Js-sK2wjhT0KyYSw0n6249Zt7w\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"51761\",\"timestamp\":1713788658}}}","req_id":38,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50912","level":"info","msg":"Sent response.","req_id":38,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.286356,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJBWXVTYlVOMVFJdGliVVBfeC1Ud0wxdlFTTVdCS2lCNU0xdk4zaHIyTnNFIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.WFZLBZyv63j5-b6NS0D9_XtpbfjYGQZj2xbaxdlos8rP_3jpazt0ZVgkSOXkyVH-8TjAfcw9rGFLdmwnzq8n6daYRBH2izT1-Ujdp-bbWFFmN6yqBsefl5uNRtdXttFAGTu-4E5N5K5DeAPo_HChuK_CfszjBfRWwCxiK-pUAWSk5-JWIb0SrmHvfrMK3kS3hrKYiC4bZomHM40nprw7u2kR5Ycz228ouNNA3CT1L2hDTDWJw7z8eflnGy1nN38j58YgK3a148W7qTJ476fwFV7J7-GCEw-rojn5WYeqSe6znsTzI6Ikgk_KFar72ZKKaVQjBpQJh3Kf-_682PTgzw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"57550\",\"timestamp\":1713788658}}}","req_id":39,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50948","level":"info","msg":"Sent response.","req_id":39,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.975355,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJUUm1PRjJ4d1E0c3lBWWdWc3FwVlE1Y2haaV9URUdZdmYxLXkwRVpNTjVZIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.Wlr47dCzlmrA2NGeC8hfRIjzNcknncD4eNSNVohYBIhsFyEIpM1Cp-HJWy-IXm2ZWeYB-XcOIqNnOfRnFzZUYIuU3uhvhlo2UZIb6fHto0t03kXsf05QavD6MU9sWrhf3Z1wG17KCqp5i4SdUpqoZOi6usUFTGd8_fgsYmchpqbd8_4-UIvTVDfRQqGa6wbRMVlVaLI2aR2RZOXkiDPSUobSuqC6vhkNbDMoHYk6qjDvpFzOatlonje5CJjDyU5aqYGanVAP_5Kn-MPrrMOWn5jpgic_UJy_GwmFa_uN6G8ms3-dJWHc7wwRBu7CMGZBXTCWh_bS4jF8TESsOx3i_w\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"6690\",\"timestamp\":1713788658}}}","req_id":40,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50922","level":"info","msg":"Sent response.","req_id":40,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.973165,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJQYV92dWlsT0ZlR2lKYUo5c3hwZi1aSE56V2MzMENZNW1veVltYTVUWGJZIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.Glzie52BMfqsOh5CtOw0BGMuFxM77_NGQkxDftG4OB3KjCVSv_EsiPbVCE-ntC_5RGgLv-ahW4ZLOz6OyCQiRzkdKw-I4daX7JSWHQ-57ZM9GG-kEb0wjU3vIbeLm_afRf0xCfOjSUy46VEkbFwjlHJurhDbGglP_UoBOErVZYJ-ek4H_-9xH34l2Iinv5FanNlC2MeKAgbLfRJzeIrgOijSAPoZJ_zQ19N5l7GaLmWSC2EccfNgbxZMJf9ic8cOGw-70akU5DWOBOtQEOf9ZGATnr9PQL30tl3INY0-zhG1ECoRRopgfyQ3c5ZmP0jRYb-UPnMUt7ETxrnw9vBxqw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"51610\",\"timestamp\":1713788658}}}","req_id":41,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Sent response.","req_id":41,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.351042,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJNTzdhZUEwcmt2QWZ0V3hZU2NjTUt5QlR5dzJyQ3dQaDRaMVZyUVVWOVpnIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.C_ZdT5Ie_I7K7-aN94kYQDVME-G3d3Krhb_YKFGlNEaeNKGwRKc4shHxyXOBCm4uJUbJigCFXj-z55XlZ4RbHMoho-c8Wb3umUrO_tTwxZOGaWL4vOwTQaWCRGBGIfT4y6OrlK5ChWm83Yju1VwM-lezsK8qSGIuoWuakwqyRGdFTgCHIo4wJxBz1suOxqRmyf5a1PjceyrpISdULN4TVOEVd15Z7xysrGjeHWxwL9G0xf1-Y3S0IEbZwF_47vtOH11XV2GA6zzNB44aFyKAmH0FKluybOZIszwVzxTxjEEMdfHFelmZ-7D-khpPSJuIUCno8tX_Rnl_cZMfZFnibQ\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"34160\",\"timestamp\":1713788658}}}","req_id":42,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Sent response.","req_id":42,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":1.07463,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0WFg0ZUE2NkVxakNDV3F6YWV3QjhENEJkdklPbzFsRDBfcGwyUTdxMjdrIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsib25ib2FyZGVyIl19XX19fQ.WQctClwbFkm53rmO-pWdisfLepFD3-n-tQuApyCRJu_CHCbXjxHosmFlKxGOMlq8aF1-eXtPrpmPa6ynsc4I7Xw_DUkRxvccgdyPjCmUaPOhVUC_HqsmdBh6-7bbIugs5e_OSUdQxy8zlZiBdGfaT3OH9qaotBuxy5t3f4BK2JjJG_UfP_N8S8XG-B7ludbTPSax-849ZNicruSgvzgh5wJuzhkcZwiI3_0TSluAg3wOOMoRF67mEfGZ9M03JumH9cBQrsMHO8LhsY9qDq8vg7DVcZU_SBjMn4fvYTn-07syep0Hkx0hr38kFHP_5OvyahA1e0dGHfnuDCRAuaE8Aw\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"connection\":\"Keep-Alive\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"29448\",\"timestamp\":1713788658}}}","req_id":43,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50898","level":"info","msg":"Sent response.","req_id":43,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":0.998544,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Received request.","req_body":"{\"input\":{\"request\":{\"port\":9080,\"scheme\":\"http\",\"query\":{},\"host\":\"localhost\",\"headers\":{\"authorization\":\"Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJSX19MRWF5cm50VXN5emR6NDcxX1AtWnczR2h3SUczX2s2RVVXWGJBbWMwIn0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoidXJuOm5nc2ktbGQ6b3JnYW5pemF0aW9uOjBiMDM5NzVlLTdkZWQtNGZiZC05YzNiLWE1ZDY1NTBkZjdlMiIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6InVybjpuZ3NpLWxkOm9yZ2FuaXphdGlvbjowYjAzOTc1ZS03ZGVkLTRmYmQtOWMzYi1hNWQ2NTUwZGY3ZTIiLCJyb2xlTmFtZXMiOlsicmVhZGVyIiwib25ib2FyZGVyIl19XX19fQ.HBkGMrCAsbcOJMeCD5hVQCrinc2aF3I2lmpt-iyt3UheeN91b7SvRgl-hJwKKzTM70-q1WsMDeR8NMThQ-sN0OQUCHixpblFoUB8s91mIsdhGHoif-46SavKEPIGZ5BjLkSk0nm-0xFdjFMe0gOYApo7HNEbglnAiaEYhswXDBM3-2R8otxdGYaHeB7QmJye7iTpF2iGCmIfRPgZETAAsoG756SaWhYkwJlSYFaw9CnXj_S6Nyh5O31sNcrBM0xqxnEyqlV7Xtg2LE30AW-1C7_u1Zow_Y52hbNxGNxVOqWf3i9Mbu2I95AUh2y0Hkh60HaC86CYRFXyBMSrAjgSQA\",\"host\":\"localhost:8082\",\"accept\":\"application/json;charset=utf-8\",\"user-agent\":\"Apache-HttpClient/4.5.14 (Java/21.0.1)\",\"connection\":\"Keep-Alive\"},\"path\":\"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6\",\"method\":\"GET\"},\"type\":\"http\",\"var\":{\"server_port\":\"9080\",\"remote_addr\":\"10.42.0.1\",\"server_addr\":\"10.42.0.12\",\"remote_port\":\"37187\",\"timestamp\":1713788658}}}","req_id":44,"req_method":"POST","req_params":{},"req_path":"/v1/data/policy/main","time":"2024-04-22T12:24:18Z"}
{"client_addr":"10.42.0.12:50964","level":"info","msg":"Sent response.","req_id":44,"req_method":"POST","req_path":"/v1/data/policy/main","resp_body":"{\"result\":{\"allow\":false}}\n","resp_bytes":27,"resp_duration":4.749846,"resp_status":200,"time":"2024-04-22T12:24:18Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:19Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:19Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Opened storage transaction (568).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Closing storage transaction (568).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:19Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Waiting 1.019144568s before next download/retry.","time":"2024-04-22T12:24:19Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Opened storage transaction (569).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Closing storage transaction (569).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:20Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Waiting 1.698347478s before next download/retry.","time":"2024-04-22T12:24:20Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:20Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:20Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Opened storage transaction (570).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Closing storage transaction (570).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Waiting 3.538397461s before next download/retry.","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:21Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:21Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Opened storage transaction (571).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Closing storage transaction (571).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Waiting 10.598701558s before next download/retry.","time":"2024-04-22T12:24:21Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:22Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:22Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Opened storage transaction (572).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Closing storage transaction (572).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:22Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Waiting 2.054577402s before next download/retry.","time":"2024-04-22T12:24:22Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Opened storage transaction (573).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:24Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:24Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Closing storage transaction (573).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Waiting 3.505967123s before next download/retry.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Opened storage transaction (574).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Closing storage transaction (574).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Waiting 1.294246729s before next download/retry.","time":"2024-04-22T12:24:24Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:26Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:26Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Opened storage transaction (575).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Closing storage transaction (575).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:26Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Waiting 2.940254121s before next download/retry.","time":"2024-04-22T12:24:26Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Opened storage transaction (576).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Closing storage transaction (576).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Waiting 3.227187877s before next download/retry.","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:28Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:28Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Opened storage transaction (577).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:28Z"}
{"level":"debug","msg":"Closing storage transaction (577).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:29Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:29Z"}
{"level":"debug","msg":"Waiting 2.6639811s before next download/retry.","time":"2024-04-22T12:24:29Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Opened storage transaction (578).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Closing storage transaction (578).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Waiting 3.16095219s before next download/retry.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:31Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:31Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Opened storage transaction (579).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Closing storage transaction (579).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Waiting 1.443195006s before next download/retry.","time":"2024-04-22T12:24:31Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:32Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:32Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:32Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:32Z"}
{"level":"debug","msg":"Opened storage transaction (580).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:32Z"}
{"level":"debug","msg":"Closing storage transaction (580).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:32Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:32Z"}
{"level":"debug","msg":"Waiting 7.123675395s before next download/retry.","time":"2024-04-22T12:24:32Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:33Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:33Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Opened storage transaction (581).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Closing storage transaction (581).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:33Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Waiting 2.100520915s before next download/retry.","time":"2024-04-22T12:24:33Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:34Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:34Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Opened storage transaction (582).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Closing storage transaction (582).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:34Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Waiting 2.277263982s before next download/retry.","time":"2024-04-22T12:24:34Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:35Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:35Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Opened storage transaction (583).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Closing storage transaction (583).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:35Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Waiting 1.460588975s before next download/retry.","time":"2024-04-22T12:24:35Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:36Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:36Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Opened storage transaction (584).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Closing storage transaction (584).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:36Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Waiting 2.568360494s before next download/retry.","time":"2024-04-22T12:24:36Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:37Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:37Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Opened storage transaction (585).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Closing storage transaction (585).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:37Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Waiting 2.649012283s before next download/retry.","time":"2024-04-22T12:24:37Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Opened storage transaction (586).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Closing storage transaction (586).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Waiting 1.722768666s before next download/retry.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Opened storage transaction (587).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Closing storage transaction (587).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Waiting 8.044905031s before next download/retry.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:39Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:39Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Opened storage transaction (588).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Closing storage transaction (588).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Waiting 3.893964394s before next download/retry.","time":"2024-04-22T12:24:39Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:41Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:41Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Opened storage transaction (589).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Closing storage transaction (589).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:41Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Waiting 1.382721249s before next download/retry.","time":"2024-04-22T12:24:41Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:42Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:42Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Opened storage transaction (590).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Closing storage transaction (590).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:42Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Waiting 1.22483578s before next download/retry.","time":"2024-04-22T12:24:42Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:43Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Opened storage transaction (591).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:43Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Closing storage transaction (591).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Waiting 2.956650845s before next download/retry.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Opened storage transaction (592).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Closing storage transaction (592).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Waiting 2.960766689s before next download/retry.","time":"2024-04-22T12:24:43Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/methods.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Opened storage transaction (593).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Closing storage transaction (593).","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"methods","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Waiting 2.325065129s before next download/retry.","time":"2024-04-22T12:24:46Z"}
{"headers":{"Content-Type":["application/octect-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:46Z","url":"http://it-odrl-pap:8080/bundles/service/v1/policies.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Content-Type response header set to application/octect-stream. Expected one of [application/gzip application/octet-stream application/vnd.openpolicyagent.bundles]. Possibly not a bundle being downloaded.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Opened storage transaction (594).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Closing storage transaction (594).","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"policies","plugin":"bundle","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Waiting 2.976117991s before next download/retry.","time":"2024-04-22T12:24:46Z"}
{"level":"debug","msg":"Download starting.","time":"2024-04-22T12:24:47Z"}
{"headers":{"Prefer":["modes=snapshot,delta"],"User-Agent":["Open Policy Agent/0.63.0 (linux, amd64)"]},"level":"debug","method":"GET","msg":"Sending request.","time":"2024-04-22T12:24:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"headers":{"Content-Type":["application/octet-stream"]},"level":"debug","method":"GET","msg":"Received response.","status":"200 OK","time":"2024-04-22T12:24:47Z","url":"http://it-odrl-pap:8080/bundles/service/v1/data.tar.gz"}
{"level":"debug","msg":"Download in progress.","time":"2024-04-22T12:24:47Z"}
{"level":"debug","msg":"Bundle activation in progress (). Opening storage transaction.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:47Z"}
{"level":"debug","msg":"Opened storage transaction (595).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:47Z"}
{"level":"debug","msg":"Closing storage transaction (595).","name":"data","plugin":"bundle","time":"2024-04-22T12:24:47Z"}
{"level":"info","msg":"Bundle loaded and activated successfully.","name":"data","plugin":"bundle","time":"2024-04-22T12:24:47Z"}
{"level":"debug","msg":"Waiting 14.076459515s before next download/retry.","time":"2024-04-22T12:24:47Z"}
