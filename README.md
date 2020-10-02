# dockerwebapp
docker web app example




Run the command below to install docker-compose.

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose



Sub X()

'

' X Macro

'

Range("A1").Select

Application.Wait (Now + TimeValue("00:01:00"))

For a = 1 To 60

ActiveCell.Offset(1, 0).Select

Application.Wait (Now + TimeValue("00:01:00"))

ActiveCell.Offset(-1, 0).Select

Application.Wait (Now + TimeValue("00:01:00"))

Next a

'

End Sub
