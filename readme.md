# <div align="center"> Github Follow via API </div>

1. This script follow all the followers of the target github user consuming the api;
2. OBS: Make sure you are careful when using this it will be apparent that you are being spammy so use at your own risk;
3. If you like it, make sure to give :star: please, thank you :smile:!

```
               / ,
          /\  \|/  /\
          |\\_;=._//|
           \."   "./
           //^\ /^\\
    .'``",/ |0| |0| \,"``'.
   /   ,  `'\.---./'`  ,   \
  /`  /`\,."(     )".,/`\  `\
  /`     ( '.'-.-'.' )     `\
  /"`     "._  :  _."     `"\
   `/.'`"=.,_``=``_,.="`'.\`
             )   (
             
I do not use this, ok, only for study purposes :).
```

### Prerequisites

```
httparty
ruby >= 1.9.2
rubygems >= 1.3.1
```

### Installing

##### Clone Repository

```shell
git clone https://github.com/Davigl/github-follow-api.git
```

##### Check your Ruby version

```shell
ruby -v
```

If you dont have it, install using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install version
```

##### Install httparty gem

```shell
gem install httparty
```

### Running the script.

To run this script you need to insert your github credentials (username, password) and pick one target person that you want to follow her followers.

```shell
ruby user.rb your_github_username your_github_password target_person
```

for example: 

```shell
ruby user.rb test123 test1234 target
```

Where test123 is the username and test1234 the password and all the target followers.

### License

Copyright © 2019, [Davi Guimarães](https://github.com/davigl).
