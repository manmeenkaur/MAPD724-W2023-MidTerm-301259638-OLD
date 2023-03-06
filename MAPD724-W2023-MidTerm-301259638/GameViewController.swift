import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    // Instance Variables
    var currentScene: GKScene?
    
    @IBOutlet weak var LivesLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var StartLabel: UILabel!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var EndLabel: UILabel!
    @IBOutlet weak var RestartButton: UIButton!
    
    @IBOutlet weak var LivesLabelLandscape: UILabel!
    @IBOutlet weak var ScoreLabelLandscape: UILabel!
    @IBOutlet weak var StartLabelLandscape: UILabel!
    @IBOutlet weak var EndLabelLandscape: UILabel!
    @IBOutlet weak var StartButtonLandscape: UIButton!
    @IBOutlet weak var RestartButtonLandscape: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        presentStartScene()
        
        CollisionManager.gameViewController = self
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
//        return .portrait
        return .landscape
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func updateLivesLabel()
    {
//        LivesLabel.text = "Lives: \(ScoreManager.Lives)"
        LivesLabelLandscape.text = "Lives: \(ScoreManager.Lives)"
    }
    
    func updateScoreLabel()
    {
//        ScoreLabel.text = "Score: \(ScoreManager.Score)"
        ScoreLabelLandscape.text = "Score: \(ScoreManager.Score)"
    }
    
    func setScene(sceneName: String) -> Void
    {
        currentScene = GKScene(fileNamed: sceneName)
        if let scene = currentScene!.rootNode as! SKScene?
        {
            scene.scaleMode = .aspectFill
            if let view = self.view as! SKView?
            {
                view.presentScene(scene)
                view.ignoresSiblingOrder = true
            }
        }
    }
    
    func presentStartScene()
    {
        ScoreLabel.isHidden = true
        LivesLabel.isHidden = true
        StartLabel.isHidden = false
        StartButton.isHidden = false
        RestartButton.isHidden = true
        EndLabel.isHidden = true
        ScoreLabelLandscape.isHidden = true
        LivesLabelLandscape.isHidden = true
        StartLabelLandscape.isHidden = false
        StartButtonLandscape.isHidden = false
        RestartButtonLandscape.isHidden = true
        EndLabelLandscape.isHidden = true
        setScene(sceneName: "StartScene")
    }
    
    func presentEndScene()
    {
        ScoreLabel.isHidden = true
        LivesLabel.isHidden = true
        RestartButton.isHidden = false
        EndLabel.isHidden = false
        ScoreLabelLandscape.isHidden = true
        LivesLabelLandscape.isHidden = true
        RestartButtonLandscape.isHidden = false
        EndLabelLandscape.isHidden = false
        setScene(sceneName: "EndScene")
    }
    
//    @IBAction func StartButton_Pressed(_ sender: UIButton)
//    {
//        ScoreLabel.isHidden = false
//        LivesLabel.isHidden = false
//        StartLabel.isHidden = true
//        StartButton.isHidden = true
//        // Initialize the Lives and Score
//        ScoreManager.Score = 0
//        ScoreManager.Lives = 5
//        updateLivesLabel()
//        updateScoreLabel()
//        setScene(sceneName: "GameScene")
//    }
    
    @IBAction func StartButtonLandscape_Pressed(_ sender: UIButton)
    {
        ScoreLabelLandscape.isHidden = false
        LivesLabelLandscape.isHidden = false
        StartLabelLandscape.isHidden = true
        StartButtonLandscape.isHidden = true
        // Initialize the Lives and Score
        ScoreManager.Score = 0
        ScoreManager.Lives = 5
        updateLivesLabel()
        updateScoreLabel()
        setScene(sceneName: "GameScene")
    }
    
//    @IBAction func RestartButton_Pressed(_ sender: UIButton)
//    {
//        ScoreLabel.isHidden = false
//        LivesLabel.isHidden = false
//        RestartButton.isHidden = true
//        EndLabel.isHidden = true
//        // Initialize the Lives and Score
//        ScoreManager.Score = 0
//        ScoreManager.Lives = 5
//        updateLivesLabel()
//        updateScoreLabel()
//        setScene(sceneName: "GameScene")
//    }
    
    @IBAction func RestartButtonLandscape_Pressed(_ sender: UIButton)
    {
        ScoreLabelLandscape.isHidden = false
        LivesLabelLandscape.isHidden = false
        RestartButtonLandscape.isHidden = true
        EndLabelLandscape.isHidden = true
        // Initialize the Lives and Score
        ScoreManager.Score = 0
        ScoreManager.Lives = 5
        updateLivesLabel()
        updateScoreLabel()
        setScene(sceneName: "GameScene")
    }
}
