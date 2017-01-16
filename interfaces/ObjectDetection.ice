//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: objectDetection.idl
//  Source: objectDetection.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPOBJECTDETECTION_ICE
#define ROBOCOMPOBJECTDETECTION_ICE

module RoboCompObjectDetection
{
	sequence <string> listType; 
	struct pose6D
	{
		string label;
		float tx;
		float ty;
		float tz;
		float rx;
		float ry;
		float rz;
	};
	sequence <pose6D> listObject;
	
	interface ObjectDetection
	{
		void statisticalOutliersRemoval();
		void passThrough();
		void grabThePointCloud(string image, string pcd);
		void aprilFitModel(string model);
		void fitModel(string model, string method);
 		void getInliers(string model);
		void projectInliers(string model);
		void convexHull(string model);
		void extractPolygon(string model);
		void ransac(string model);
		void normalSegmentation(string model);
		void euclideanClustering(out int numCluseters);
		void showObject(int numObject);
		void reset();
		void mirrorPC();
		void mindTheGapPC();
		void reloadVFH(string pathToSet);
		void loadTrainedVFH();
		void fitTheViewVFH();
		void vfh(out listType guesses);
		void surfHomography(out listType guesses);
		void centroidBasedPose(out float x, out float y, out float theta);
		void segmentImage();
		void grabTheAR();
		bool findTheObject(string objectTofind);
		bool findObjects(out listObject lObjects);
		void getPose(out float x,out float y,out float z);
		void getRotation(out float rx,out float ry,out float rz);
		void saveCanonPose(string label, int numPoseToSave, out pose6D tag1, out pose6D tag2, out pose6D tag3, out pose6D tag4, out pose6D tag5, out pose6D tag6, out pose6D tag7, out pose6D tag8, out pose6D tag9);
		void saveRegPose(string label, int numPoseToSave, out pose6D tag1, out pose6D tag2, out pose6D tag3, out pose6D tag4, out pose6D tag5, out pose6D tag6, out pose6D tag7, out pose6D tag8, out pose6D tag9);
		void guessPose(string label, out pose6D guess);
		
	};
};
  
#endif

