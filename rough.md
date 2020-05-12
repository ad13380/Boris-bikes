Object \\         Message
Person
Bike              is_working?
Docking Station   release_bike

Docking Station --release_bike--> Bike

Person <--is_working?--  Bike
        --use---------->


Error message:
4: from /Users/sophiebrown/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
        3: from /Users/sophiebrown/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `load'
        2: from /Users/sophiebrown/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        1: from (irb):1
NameError (uninitialized constant DockingStation)

The type of error is NameError.
The file path is /Users/sophiebrown/.rvm/rubies/ruby-2.7.0/bin/irb.
The error is taking place in line 23.
This error is raised when a given name is undefined or invalid. This can be resolved by defining the variable.

# Original Rspec test for 'responds to the method release_bike'

it 'responds to the method release_bike' do
  docking_instance = DockingStation.new
  expect(docking_instance).to respond_to(:release_bike)
end

# dock feature test

- dock method will take an argument of a bike that has name
- dock method will store that name as an attribute of the DockingStation instance, using an instance variable
