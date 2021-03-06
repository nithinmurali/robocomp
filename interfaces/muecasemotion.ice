//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: muecasemotion.idl
//  Source: muecasemotion.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPMUECASEMOTION_ICE
#define ROBOCOMPMUECASEMOTION_ICE

#include <JointMotor.ice>

#include <CommonHead.ice>

module RoboCompmuecasemotion{

	interface muecasemotion{
						RoboCompJointMotor::MotorParamsList getAllMotorParams();
	                void  getAllMotorState(out RoboCompJointMotor::MotorStateMap mstateMap);
	                void  setPosition(RoboCompJointMotor::MotorGoalPosition goal)throws RoboCompJointMotor::UnknownMotorException, RoboCompJointMotor::HardwareFailedException;
	};
};
  
#endif