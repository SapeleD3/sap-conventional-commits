# update_version.py
import subprocess


def get_latest_version():
    result = subprocess.run(['cz', 'version', "-p"], capture_output=True, text=True)
    return result.stdout.strip()


def update_version_file(version):
    with open('VERSION', 'w') as f:
        f.write(version)


def stage_and_amend():
    subprocess.run(['git', 'add', 'VERSION'])
    subprocess.run(['git', 'commit', '--amend', '--no-edit'])


if __name__ == "__main__":
    latest_version = get_latest_version()
    update_version_file(latest_version)
    stage_and_amend()
