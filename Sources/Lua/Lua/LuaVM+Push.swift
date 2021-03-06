//
//  LuaVM+Push.swift
//  Lua
//

import CLua

extension LuaVM {
	/// Pushes a `nil` onto the stack
	internal func pushNil() {
		lua_pushnil(self.state)
	}
	
	/// Push a `Double` onto the stack
	internal func push(_ value: Double) {
		lua_pushnumber(self.state, value)
	}
	
	/// Push an `Int` onto the stack
	internal func push(_ value: Int) {
		lua_pushinteger(self.state, value)
	}
	
	/// Push a `UInt32` onto the stack
	internal func push(_ value: UInt32) {
		lua_pushunsigned(self.state, value)
	}
	
	/// Push a `String` onto the stack
	internal func push(_ value: String) {
		_ = lua_pushstring(self.state, value)
	}
	
	/// Push a `LightUserData` onto the stack
	///
	/// - Note: This only creates a `weak` reference and will not prevent the
	///         `pointee` from being released
	internal func push(_ value: UnsafeMutableRawPointer) {
		lua_pushlightuserdata(self.state, value)
	}
}
