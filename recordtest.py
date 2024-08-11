import pyautogui
import robot
# Définissez la région de capture d'écran
resolution = (0, 0, 1920, 1080)  # exemple de résolution
# Définissez le répertoire où enregistrer l'image
video_dir = 'C:\\application\\video-test'
robot.run('test\\pageobject.robot')
# Capture d'écran
image = pyautogui.screenshot(region=resolution)
# Enregistrez l'image dans le répertoire spécifié
image.save(f'{video_dir}/test_video.png')  # Notez l'extension .png
# Exécutez les cas de test
# Arrêtez l'enregistrement de l'écran
pyautogui.stop_screenshot()

