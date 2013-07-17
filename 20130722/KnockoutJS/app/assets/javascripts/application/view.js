var BookstoreView = (function () {

	var computed = ko.computed;
	var observable = ko.observable;
	var observableArray = ko.observableArray;

	return function BookstoreView(categories, library) {
		var self = this;

		_.each(categories, function (category) { category.selected = observable(false); })

		self.categories = categories;

		var _selectedBook = self.selectedBook = observable(null);
		var _selectedCategory = self.selectedCategory = observable(null);
		var _selectedAuthor = self.selectedAuthor = observable(null);
		var _cart = self.cart = observableArray();

		self.selectBook = selectBook;
		self.deselectBook = deselectBook;
		self.selectAuthor = selectAuthor;
		self.clearAuthor = clearAuthor;
		self.selectCategory = selectCategory;
		self.clearCategory = clearCategory;

		self.isAuthorSelected = computed(isAuthorSelected);
		self.isBookSelected = computed(isBookSelected);
		self.isCategorySelected = computed(isCategorySelected);
		self.books = computed(getBookList);

		function isBookSelected() {
			var selectedBook = _selectedBook();

			return selectedBook != null;
		}

		function selectBook(book) {
			_selectedBook(book);
		}

		function deselectBook() {
			_selectedBook(null);
		}

		function isAuthorSelected() {
			var selectedAuthor = _selectedAuthor();

			return selectedAuthor != null;
		}

		function selectAuthor(author) {
			_selectedAuthor(author);
		}

		function clearAuthor() {
			_selectedAuthor(null);
		}

		function isCategorySelected() {
			var selectedCategory = _selectedCategory();

			return selectedCategory != null;
		}

		function selectCategory(category) {
			category.selected(true);
			_selectedCategory(category);
		}

		function clearCategory() {
			var category = _selectedCategory();

			if (category != null) {
				category.selected(false);
				_selectedCategory(null);
			}
		}

		function getBookList() {
			var selectedAuthor = _selectedAuthor();
			var selectedCategory = _selectedCategory();

			return _.filter(library, filterBooks);

			function filterBooks(book) {
				if ((selectedCategory == null) && (selectedAuthor == null)) {
					return true;
				}

				if ((selectedCategory != null) && (book.category_id != selectedCategory.id)) {
					return false;
				}

				if ((selectedAuthor != null) && !_.any(book.authors, function(author) { return author == selectedAuthor })) {
					return false;
				}

				return true;
			}

		}

		return self;
	}
})();
