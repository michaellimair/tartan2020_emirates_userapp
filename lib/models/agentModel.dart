class AgentModel {
  static AgentModel _agentModel = AgentModel._internal();

  static String name;
  static String imageAssetURI; 
  static bool available = false;

  static void setAgentAvailable(bool agentAvailable, {String agentName, String agentImageAssetURI}) {
    available = agentAvailable;
    if (!available) {
      name = null;
      imageAssetURI = null;
    } else {
      name = agentName;
      imageAssetURI = agentImageAssetURI;
    }
  }

  factory AgentModel() {
    return _agentModel;
  }

  AgentModel._internal();
}