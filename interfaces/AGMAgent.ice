//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: AGMAgent.idl
//  Source: AGMAgent.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPAGMAGENT_ICE
#define ROBOCOMPAGMAGENT_ICE

#include <AGMWorldModel.ice>

module RoboCompAGMAgent{

	interface AGMAgentTopic{
		void structuralChange(RoboCompAGMWorldModel::Event modification);
		void symbolUpdated(RoboCompAGMWorldModel::Node nodeModification);
		void edgeUpdated(RoboCompAGMWorldModel::Edge edgeModification);

	};
};
  
#endif