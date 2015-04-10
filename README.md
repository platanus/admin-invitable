Admin Invitable
===============

Admin Invitable is a gem that allows [devise invitable gem](https://github.com/scambra/devise_invitable) to work with [ActiveAdmin](http://activeadmin.info) nicely.
To clarify, the common use will be super administrators inviting administrators with less privileges.

## Pre-Installation

Add to your Gemfile and install the following gems...

```ruby
gem "devise"
gem 'devise_invitable'
gem "activeadmin", github: 'gregbell/active_admin'
```

> You need to get up and running gems named before

## Installation

Add to your Gemfile

```ruby
gem "admin_invitable"
```

Then, run the installer:

```shell
$ rails generate admin_invitable:install
```

This will copy the following files:

* `your_app/app/views/devise/invitations/edit.html.erb`. This is the form that will be used to change the password (this form uses Active Admin helpers and styles)
* `your_app/app/views/devise/mailer/invitation_instructions.html.erb`. Email template that will be sent to invited users.

> You can customize these files if you need.

## Usage

Supposing you want to invite administrators, you need to have an `Admin` model and...

```shell
$ rails generate devise_invitable Admin
```

Then, somewhere in your code, a super admin will have access to perform:

```ruby
Admin.invite!(:email => "newadmin@platan.us")
```

This will send the email (`invitation_instructions.html.erb`) to **newclient@platan.us** with a link to the form (`edit.html.erb`). After choosing the password, the admin will by redirected into Active Admin dashboard.

You must kwow this gem uses the devise invitable default path to work with Active Admin. If you want to make "normal" besides "admin" invitations, you need to create custom paths for "normal" resources. For example: if you want to invite `Admin`s and `Client`s you will need to generate views for clients like this:

```shell
$ rails generate devise_invitable:views clients
```

Then, clients will be redirected to the app and administrators to Active Admin.

## Example

If you want to see an example you can:

* Clone the repository
* Run `$ rails s` inside `/admin_invitable/spec/dummy`
* Open browser at `localhost:3000`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Thank you [contributors](https://github.com/platanus/admin-invitable/graphs/contributors)!

<img src="http://platan.us/gravatar_with_text.png" alt="Platanus" width="250"/>

Admin Invitable is maintained by [platanus](http://platan.us).

## License

Admin Invitable is © 2015 platanus, spa. It is free software and may be redistributed under the terms specified in the LICENSE file.

