tag app
	todos\Array[string] = []
	todoText = ""

	def setup
		const existingTodos = window.localStorage.getItem("todos")
		todos = JSON.parse(existingTodos) || []

	def add
		todos.push(todoText)
		window.localStorage.setItem("todos", JSON.stringify(todos))
		todoText = ""

	css d:flex ai:center jc:center
		.container d:flex fld:column
		form d:flex g:2
	<self>
		<div.container>
			<ul> for todo in todos
				<li> todo

			<form @submit.prevent=add>
				<input type="text" bind=todoText>
				<input type="submit" value="Add Todo">

imba.mount <app>
