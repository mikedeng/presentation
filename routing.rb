class Routing
	 def get_controller_and_action(env)
			_, controller, action, after = env['PATH_INFO'].split('/', 4)
			controller  = controller.capitalize
			controller  = controller == '' ? 'Home' : controller
			action      = (action || '') == '' ? 'index' : action
			controller += 'Controller'
			[Object.const_get(controller), action]
		end
end