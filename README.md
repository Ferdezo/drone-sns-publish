# drone-sns-publish

## Drone configuration examples

```yaml
pipeline:
  release-notify:
    image: ferdezo/drone-sns-publish
    topic_arn: arn:aws:sns:***:***:drone-releases
    subject: ${DRONE_REPO_NAME} release successful
    message: Successul released version ${DRONE_TAG} from branch ${DRONE_BRANCH} by ${DRONE_COMMIT_AUTHOR}
```

```yaml
pipeline:
  release-failure-notify:
    image: ferdezo/drone-sns-publish
    topic_arn: arn:aws:sns:***:***:drone-releases
    region: us-west-1
    subject: ${DRONE_REPO_NAME} release failure
    message: Failed to release version ${DRONE_TAG} from branch ${DRONE_BRANCH} by ${DRONE_COMMIT_AUTHOR}
  when:
    event: tag
    status: failure
```
