class Routing
	 def get_controller_and_action(env)
			_, controller, action, after = env['PATH_INFO'].split('/', 4) # 5. split path info
			controller  = controller.capitalize
			controller  = controller == '' ? 'Home' : controller  			  # 6. controller name
			action      = (action || '') == '' ? 'index' : action 			  # 7. action name
			controller += 'Controller' 						 											  # 8. concat controller name
			[Object.const_get(controller), action] 											  # 9. return controller & action
		end
end