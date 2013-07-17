class HomeController < ApplicationController
	def index
		@books = [
			Book.new({
						 id: 1,
						 title: 'Children''s Book 1',
						 category_id: 1,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 2,
						 title: 'Children''s Book 2',
						 category_id: 1,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Frodo Baggins']
					 }),
			Book.new({
						 id: 3,
						 title: 'Children''s Book 3',
						 category_id: 1,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Gandalf the Grey']
					 }),
			Book.new({
						 id: 4,
						 title: 'Fantasy Book 4',
						 category_id: 2,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 5,
						 title: 'Fantasy Book 5',
						 category_id: 2,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Frodo Baggins']
					 }),
			Book.new({
						 id: 6,
						 title: 'Fantasy Book 6',
						 category_id: 2,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Gandalf the Grey']
					 }),
			Book.new({
						 id: 7,
						 title: 'Historical Book 7',
						 category_id: 3,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 8,
						 title: 'Historical Book 8',
						 category_id: 3,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 9,
						 title: 'Historical Book 9',
						 category_id: 3,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 10,
						 title: 'Mystery Book 1',
						 category_id: 4,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 11,
						 title: 'Mystery Book 2',
						 category_id: 4,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 12,
						 title: 'Mystery Book 3',
						 category_id: 4,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 13,
						 title: 'Romance Book 1',
						 category_id: 5,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 14,
						 title: 'Romance Book 2',
						 category_id: 5,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 15,
						 title: 'Romance Book 3',
						 category_id: 5,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 16,
						 title: 'Sci-fi Book 1',
						 category_id: 6,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 17,
						 title: 'Sci-fi Book 2',
						 category_id: 6,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 18,
						 title: 'Sci-fi Book 3',
						 category_id: 6,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 19,
						 title: 'Poetry Book 1',
						 category_id: 7,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 20,
						 title: 'Poetry Book 2',
						 category_id: 7,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 21,
						 title: 'Poetry Book 3',
						 category_id: 7,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 22,
						 title: 'Horror Book 1',
						 category_id: 8,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 23,
						 title: 'Horror Book 2',
						 category_id: 8,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 }),
			Book.new({
						 id: 24,
						 title: 'Horror Book 3',
						 category_id: 8,
						 description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec consequat massa, vel faucibus nisi. Nunc nec libero euismod, egestas orci eget, fermentum lorem. Quisque fringilla sit amet ipsum in adipiscing. Praesent eget mi lorem. Integer commodo ipsum non metus porttitor porttitor. Cras tortor elit, vestibulum sed nisl eu, imperdiet dapibus est. Nulla tempus libero ut dapibus pharetra. Pellentesque diam odio, venenatis sed dignissim a, consequat a enim. Integer nec viverra enim. Fusce vitae posuere felis. Aliquam tincidunt tempor sapien at commodo. Nunc malesuada faucibus quam, in egestas nulla accumsan vel. Vestibulum vestibulum volutpat ipsum sit amet dictum. Phasellus vulputate pretium tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
						 authors: ['Bilbo Baggins']
					 })
		]
	end
end
