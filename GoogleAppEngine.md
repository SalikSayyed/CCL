# link=> https://cloud.google.com/sdk/docs/install

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-387.0.0-linux-x86_64.tar.gz

tar -xf google-cloud-cli-387.0.0-linux-x86.tar.gz

git clone https://github.com/GoogleCloudPlatform/python-docs-samples.git

gcloud auth application-default login

python3 -m venv env
source env/bin/activate

googleProjects/python-docs-samples/appengine/standard_python3/hello_world

pip install -r requirements.txt

python3 main.py


# browser=> localhost:8080
