# This puppet script configures the ssh client so that
# so as to connect to a remote server without typing a
# password

file {"${ENV['HOME']}/.ssh/config":
	ensure: file,
	owner: $user,
	group: $user,
	mode: '0600',
	content: "Host *
		  Hostname 18.209.178.180
		  User ubuntu
		  IdentifyFile ~/.ssh.school
		  PasswordAuthentication no",
}
