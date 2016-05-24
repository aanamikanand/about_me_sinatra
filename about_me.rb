require 'sinatra'
require 'pry'
require 'babbler'

get '/' do 
	erb :index
end

get '/contact' do
	erb :contact
end

get '/resume' do
	@experiences = 
	['Around 5+ years of diverse experience as a UI Developer/Designer.',
	'Experienced as a Web Developer in developing web applications using JAVASCRIPT, HTML,
	CSS, BOOTSTRAP, JSON, ANGULARJS, UNDERSCORE.JS, JQUERY, AJAX and
	WORDPRESS.',
	'Adept in designing UI patterns and applications with the help of Sublime Text Editor, Adobe
	Photoshop, Notepad++.',
	'Used JSON for storing and exchanging information between browsers and servers.',
	'Involved in developing web Page Applications using AngularJS.', 
	'Involved in writing JQuery based AJAX requests.', 
	'Developing experience in HTML5, CSS 3, JavaScript, JQuery, and Bootstrap', 
	'Ability to work under pressure in fast-paced environment. Excellent interpersonal skills with an ability to interact with individuals at all levels.', 
	'Quick learner, exceptional problem-solving and troubleshooting capabilities.' ]

erb :resume
end

post '/contact' do
	"Thanks #{params[:firstname]}!! We will Contact you shortly at #{params[:email]}."
end