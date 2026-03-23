# jenkins-pipeline

## it needs configure jenkins for that via plugin.
plugin:
 - gitlab - for build triggers
 - goto jenkinsand system and configure gitlab.
   - PAT: glpat-olkR-Dk5B3IT_SS_IFVDH2M6MQpvOjEKdTo0amxlbw8.01.1701t7jf3
 - then in my pipeline goto: my-pipeline/Configuration/General section GitLab connection.
   - below are triggers for chosen
   - 


![img.png](img.png)

## then it needs configure GitLab.

goto: GitLab/ Project/Settings/Integration/Jenkins
setup: 
-  jenkins URL
- project name - is name of the pipeline in Jenkins
- username and password - is the same as into jenkins.(nana/nana)


## Multi pipeline
cannot be configure asw the single pipeline.

**settings:**
use plugin: multibranch scan webhook trigger
then goto: my-multibranch-pipeline/configure/build Configuration/ section Scan Multibranch Pipeline Trigger.
then: 
 - mark Scan by webhook
 - trigger token: some name of the token <tokenname>
 - goto to gitlab and setup the token
 - Gitlab: project/settings/Webhooks - new webhool
   - url: the jenkins URL: `http://167.172.103.117:8080/multibranch-webhook-trigger/invoke?token=gitlab-token`

conclusion:
on Jenkins side - i have to define the name of the rtoken. then use jenkins url for thjre trigger in gilab
Gitlab- create a webhook with the token from Jenkins side.

