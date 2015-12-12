# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
  ]
)

boards = Board.create(
[
  { user_id: 1, name: "Test Board, Please Ignore", description: "Please Ignore This Board", level: 1, date: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M")},
  { user_id: 5, name: "Anual Water Resource Tests", description: "Messages from PMO regarding the Anual Water Resource Tests", level: 2, date: DateTime.strptime("11/14/2009 15:00", "%m/%d/%Y %H:%M")},
  { user_id: 10, name: "Town Hall Meeting: Agenda", description: "Agenda for the bianual town hall meeeting", level: 1, date: DateTime.strptime("02/04/2010 12:10", "%m/%d/%Y %H:%M")},
  { user_id: 15, name: "Employee Of the Month", description: "Management discussion of Skylonda's monthly of EOTM", level: 3, date: DateTime.strptime("04/01/2010 18:15", "%m/%d/%Y %H:%M")},
]
)

posts = Post.create(
[
  { user_id: 1, board_id: 1, subject: "Test Post, Please Ignore", text: "Why are you reading this? I told you to ignore it!"},
  { user_id: 4, board_id: 2, subject: "Water Resource Test Next Week", text: "This is a reminder that employees are not permitted to swim in the graywater while test is in progress."},
  { user_id: 6, board_id: 2, subject: "Town Hall Meeting 02/14/2010", text: "Hey Everyone, write your deliverables for the meeting here, so we are all on the same page."},
  { user_id: 8, board_id: 3, subject: "April 2010", text: "Employee Of the Month Is awarded to... Jerry, from Accounting! Just kidding, nobody likes Jerry. Dianna is the actual EOTM!"},
  { user_id: 6, board_id: 2, subject: "May 2010", text: "Hey Everyone, after the fiasco with Jerry last month, corporate has decided to discontinue Employee of the Month -- We still havent found the company mascot."},
  # { user_id: 1, board_id: 1, subject: "Test Post, Please Ignore", text: "Why are you reading this? I told you to ignore it!", date: DateTime.strptime("09/01/2009 17:02", "%m/%d/%Y %H:%M")},
  # { user_id: 4, board_id: 2, subject: "Water Resource Test Next Week", text: "This is a reminder that employees are not permitted to swim in the graywater while test is in progress.", date: DateTime.strptime("11/14/2009 15:00", "%m/%d/%Y %H:%M")},
  # { user_id: 6, board_id: 2, subject: "Town Hall Meeting 02/14/2010", text: "Hey Everyone, write your deliverables for the meeting here, so we are all on the same page.", date: DateTime.strptime("02/04/2010 12:10", "%m/%d/%Y %H:%M")},
  # { user_id: 8, board_id: 3, subject: "April 2010", text: "Employee Of the Month Is awarded to... Jerry, from Accounting! Just kidding, nobody likes you Jerry. Dianna is the actual EOTM!", date: DateTime.strptime("04/01/2010 18:15", "%m/%d/%Y %H:%M")},
  # { user_id: 6, board_id: 2, subject: "May 2010", text: "Hey Everyone, after the fiasco with Jerry last month, corporate has decided to discontinue Employee of the Month -- We still havent found the company mascot.", date: DateTime.strptime("05/04/2010 12:10", "%m/%d/%Y %H:%M")},
]
)

comments = Comment.create(
[
  { user_id: 1, post_id: 1, text: "Test Comment, Please Ignore", date: DateTime.strptime("09/01/2009 17:04", "%m/%d/%Y %H:%M")},
  { user_id: 2, post_id: 1, text: "Test Heckle, Please Ignore", date: DateTime.strptime("09/01/2009 17:06", "%m/%d/%Y %H:%M")},
  { user_id: 7, post_id: 1, text: "Mr. Ardvark smells...", date: DateTime.strptime("09/01/2009 17:10", "%m/%d/%Y %H:%M")},
  { user_id: 3, post_id: 1, text: "Shut Up Jerry, Nobody likes you", date: DateTime.strptime("09/01/2009 17:14", "%m/%d/%Y %H:%M")},
  { user_id: 7, post_id: 1, text: "That's Mr. Gopher to you. And might I remind you, mr. Cat, that I can report this to HR. So be nice.", date: DateTime.strptime("09/01/2009 17:20", "%m/%d/%Y %H:%M")},
  { user_id: 4, post_id: 2, text: "Damnit Jerry,you had one job. ONE JOB.", date: DateTime.strptime("11/21/2009 12:04", "%m/%d/%Y %H:%M")},
  { user_id: 7, post_id: 2, text: "Sorry...", date: DateTime.strptime("11/21/2009 17:01", "%m/%d/%Y %H:%M")},
  { user_id: 7, post_id: 3, text: ":(", date: DateTime.strptime("04/03/2010 17:04", "%m/%d/%Y %H:%M")},
  { user_id: 13, post_id: 4, text: "LOL. I think theres still some pudding in the AC, the whole building smells like butterscotch since he left..", date: DateTime.strptime("05/04/2010 17:04", "%m/%d/%Y %H:%M")}
]
)
