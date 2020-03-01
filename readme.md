<h1 align="center"> Github Follow via API </h1>

1. This script follow all the followers of the target (github user) using developer api.
2. **OBS**: Make sure you're being careful when using this, it will be apparent that you are being spammy so use at your own risk.
3. If you like it, make sure to give :star: please, thank you! :smile:
<hr>

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

## Prerequisites:

```
• httparty
• ruby >= 1.9.2
• rubygems >= 1.3.1
```

## Installing:

###### Clone Repository

```shell
git clone https://github.com/Davigl/github-follow-api.git
```

###### Check your Ruby version

```shell
$ ruby -v
```

**If you dont have it, install using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):**

```shell
$ rbenv install version
```

###### Install httparty gem

```shell
$ gem install httparty
```

## Running the script:

**To run this script you need to insert your github credentials (username, password) and pick one target person that you want to follow her followers.**

###### Where login is the username and password the password and all the target followers. 
```ruby
$ ruby user.rb <login> <password> <target>
```


### License

Licensed by [GNU General Public License v3.0](https://github.com/Davigl/github-follower/blob/master/LICENSE).
