# Continuous integration and delivery 

💡 [Tap here](https://new.oprosso.net/p/4cb31ec3f47a4596bc758ea1861fb624) **to leave your feedback on the project**. It's anonymous and will help our team make your educational experience better. We recommend completing the survey immediately after the project.

## Contents

1. [Chapter I](#chapter-i) 
2. [Chapter II](#chapter-ii) \
   2.1. [CI and CD setup](#part-1-ci-and-Cd-setup)

## Instructions

How to learn at “School 21”:

- Here, you’ll find a unique learning experience with a lot of freedom. You’re given a task and left to find your own way to solve it, using whatever resources work best for you — whether that’s the Internet or AI tools like GigaChat. Just be mindful of information quality: verify, think critically, analyze, and compare.
- Peer-to-peer (P2P) learning is the exchange of knowledge and experience with peers, where everyone acts as both mentor and student. This approach allows you to gain a deeper understanding of the material by learning from one another.
- Feel free to ask for help: around you are peers who are also navigating this path for the first time. Share your own experience and ideas with others.  Join Rocket.Chat to stay updated with the latest community announcements. 
- Your learning is meaningless if you just copy someone else’s solutions. When receiving help from others, always make sure you fully understand the “why”, “how”, and “purpose” behind the solution. Don’t be afraid to make mistakes. 
- Does the task seem impossible? Take a break, get some fresh air and clear your mind — this has helped many people. Maybe after that, the solution will come to you naturally.
- The learning process is just as important as the result. It’s not just about completing the task — it’s about understanding HOW to solve it. 

How to work with the project:

- Before starting, clone the project from GitLab into a repository with the same name.
- All files should be created inside the _src/_ folder of the cloned repository.
- After cloning the project, create a _develop_ branch and do all your development there. Then, push the _develop_ branch to GitLab.
- Your directory should not contain any files other than those specified in the assignments.

## Chapter I

**CI/CD** is a set of practices that allows developers to streamline the application deployment process. With continuous integration, the application development process is presented as a sequence of small iterations, each of which aims to maintain continuity when integrating changes. This means that code modifications are automatically built and tested in the version control system with each significant change. Continuous delivery deploys the built application to the target environment. Thus, CI/CD principles enable changes to safely and continuously reach production.

## Chapter II

The result of the work must be a report with detailed descriptions and screenshots of the implementation of each point. Prepare the report as a Markdown file in the `src` directory named `REPORT.MD`.

## Part 1. CI and CD Setup

### Task:

1. Clone a working repository.

2. Get access to a remote Kubernetes cluster.

3. Create a separate namespace for the GitLab Runner.

4. Install a GitLab Runner in a Kubernetes cluster: use the Helm chart for the GitLab Runner to install it in your Kubernetes cluster. The Helm chart automatically creates a deployment for the Runner, which creates one or more modules that execute application container jobs.

5. Create a secret to store the GitLab registration token.

6. Create a `config.toml` configuration file to use the Kubernetes Runner installed on the given cluster. In this file, you must also specify the resource limits and the Docker image (e.g., `docker:stable`). Register the installed Runner using the configuration file.

7. Develop the following Pipeline:

   - build — building the application (run automatically for branches with the prefix `feature_`);
   - test — running unit tests and Postman functional tests via the Newman utility (run automatically for branches with the prefix `feature_`);
   - staging — running an application in a staging environment (run manually and only for tags).

8. Use secrets to pass private keys to services for authorization (`application.properties` file in the services' source code directory).

9. Make a change to the application code. Add a new dependency to the `pom.xml` file and commit the change.