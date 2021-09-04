tag app
	todos\Array[string] = []
	todoText = ""

	def mount
		const existingTodos = window.localStorage.getItem("todos")
		todos = JSON.parse(existingTodos) || []
		imba.commit!

	def add
		todos.push(todoText)
		window.localStorage.setItem("todos", JSON.stringify(todos))
		todoText = ""

	css d:flex ai:center jc:center
		.container
			d:flex fld:column
	<self>
		<div.container>
			<ul> for todo in todos
				<li> todo

			<form @submit.prevent=add>
				<input type="text" bind=todoText>

imba.mount <app>
