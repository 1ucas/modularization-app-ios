# Uncomment the next line to define a global platform for your project
platform :ios, '10.3'

source 'https://github.com/1ucas/private-cocoapods-specs.git'
source 'https://cdn.cocoapods.org/'

use_frameworks!

flutter_application_path = "../ModuloCrossFlutter/modulo_cross_flutter/"
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'ModularizacaoCross' do
  # Comment the next line if you don't want to use dynamic frameworks

  # Pods for ModularizacaoCross
  pod 'ActionsiOS', '1.0.4'
  pod 'ModuloNativoiOS', '1.0.6'
  install_all_flutter_pods(flutter_application_path)

  target 'ModularizacaoCrossTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ModularizacaoCrossUITests' do
    # Pods for testing
  end

end
