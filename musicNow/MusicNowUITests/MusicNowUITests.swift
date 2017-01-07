//
//  MusicNowUITests.swift
//  MusicNowUITests
//
//  Created by mohsen on 16/11/16.
//  Copyright © 2016 mohsen. All rights reserved.
//

import XCTest

class MusicNowUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testNbrMusics() {
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        let count = tablesQuery.cells.count
        XCTAssert(count > 0)
    }
    
    
    func testPauseButton(){
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        let playitemButton = tablesQuery.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"]
        playitemButton.tap()
        
        let pauseCircleButton = app.buttons["pause circle"]
        pauseCircleButton.tap()
        
        let playCircleButton = app.buttons["play circle"]
        playCircleButton.tap()
        tablesQuery.cells.containing(.staticText, identifier:"Roosevelt-Fever.mp3").buttons["playitem"].tap()
        pauseCircleButton.tap()
        playCircleButton.tap()
        playitemButton.tap()
        pauseCircleButton.tap()
        playCircleButton.tap()
        
    }
    
    func testNextButton(){
        
        let app = XCUIApplication()
        app.tables.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"].tap()
        
        let skipNextCircleButton = app.buttons["skip next circle"]
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        
    }
    func testPrevButton(){
        
        let app = XCUIApplication()
        app.tables.cells.containing(.staticText, identifier:"Tess-Love-Gun.mp3").buttons["playitem"].tap()
        
        let skipPreviousCircleButton = app.buttons["skip previous circle"]
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        
        
        
    }
    
    func testSlider(){
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"].tap()
        
        let slider = app.sliders.element
        slider.adjust(toNormalizedSliderPosition: 0.2)
        slider.adjust(toNormalizedSliderPosition: 0.7)
        
        slider.adjust(toNormalizedSliderPosition: 0.5)
        slider.adjust(toNormalizedSliderPosition: 0.2)
        
        tablesQuery.cells.containing(.staticText, identifier:"Roosevelt-Fever.mp3").buttons["playitem"].tap()
        
        slider.adjust(toNormalizedSliderPosition: 0.7)
        slider.adjust(toNormalizedSliderPosition: 0.2)
        
    }
    
    func testPlayButtonInList(){
        
        let tablesQuery = XCUIApplication().tables
        let playitemButton = tablesQuery.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"]
        playitemButton.tap()
        
        let playitemButton2 = tablesQuery.cells.containing(.staticText, identifier:"Roosevelt-Fever.mp3").buttons["playitem"]
        playitemButton2.tap()
        
        let playitemButton3 = tablesQuery.cells.containing(.staticText, identifier:"Selena-Gomez-Same-Old-Love.mp3").buttons["playitem"]
        playitemButton3.tap()
        playitemButton2.tap()
        playitemButton2.tap()
        playitemButton.tap()
        playitemButton3.tap()
        tablesQuery.cells.containing(.staticText, identifier:"sound2.mp3").buttons["playitem"].tap()
        
        let playitemButton4 = tablesQuery.cells.containing(.staticText, identifier:"The-Weeknd-Starboyft.DaftPunk.mp3").buttons["playitem"]
        playitemButton4.tap()
        playitemButton4.tap()
        
        let playitemButton5 = tablesQuery.cells.containing(.staticText, identifier:"Tess-Love-Gun.mp3").buttons["playitem"]
        playitemButton5.tap()
        playitemButton5.tap()
        
    }
    
    func testScrollList(){
        
        
        let theWeekndStarboyftDaftpunkMp3StaticText = XCUIApplication().tables.staticTexts["The-Weeknd-Starboyft.DaftPunk.mp3"]
        theWeekndStarboyftDaftpunkMp3StaticText.swipeUp()
        theWeekndStarboyftDaftpunkMp3StaticText.swipeDown()
        
        
    }
    
    func testShuffleButton(){
        
        let app = XCUIApplication()
        app.tables.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"].tap()
        app.buttons["shuffle variant 2"].tap()
        
        let skipNextCircleButton = app.buttons["skip next circle"]
        skipNextCircleButton.tap()
        
        let skipPreviousCircleButton = app.buttons["skip previous circle"]
        skipPreviousCircleButton.tap()
        
    }
    

    
    func testAll(){
        
        
        let app = XCUIApplication();
        let tablesQuery2 = app.tables
        let playitemButton = tablesQuery2.cells.containing(.staticText, identifier:"FRENSHIP-Capsize.mp3").buttons["playitem"]
        playitemButton.tap()
        
        let playitemButton2 = tablesQuery2.cells.containing(.staticText, identifier:"Roosevelt-Fever.mp3").buttons["playitem"]
        playitemButton2.tap()
        
        let playitemButton3 = tablesQuery2.cells.containing(.staticText, identifier:"Selena-Gomez-Same-Old-Love.mp3").buttons["playitem"]
        playitemButton3.tap()
        
        let playitemButton4 = tablesQuery2.cells.containing(.staticText, identifier:"sound2.mp3").buttons["playitem"]
        playitemButton4.tap()
        
        let playitemButton5 = tablesQuery2.cells.containing(.staticText, identifier:"Tess-Love-Gun.mp3").buttons["playitem"]
        playitemButton5.tap()
        playitemButton4.tap()
        playitemButton3.tap()
        playitemButton2.tap()
        playitemButton.tap()
        
        let skipNextCircleButton = app.buttons["skip next circle"]
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        
        let skipPreviousCircleButton = app.buttons["skip previous circle"]
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        app.sliders.element.adjust(toNormalizedSliderPosition: 0.7)
        app.sliders.element.adjust(toNormalizedSliderPosition: 0.2)
        
        let tablesQuery = tablesQuery2
        tablesQuery.staticTexts["sound2.mp3"].swipeUp()
        tablesQuery.staticTexts["The-Weeknd-Starboyft.DaftPunk.mp3"].swipeDown()
        
        let pauseCircleButton = app.buttons["pause circle"]
        pauseCircleButton.tap()
        
        let playCircleButton = app.buttons["play circle"]
        playCircleButton.tap()
        pauseCircleButton.tap()
        playCircleButton.tap()
        playitemButton2.tap()
        playitemButton2.tap()
        pauseCircleButton.tap()
        playCircleButton.tap()
        playitemButton4.tap()
        playitemButton5.tap()
        skipPreviousCircleButton.tap()
        skipPreviousCircleButton.tap()
        app.buttons["shuffle variant 2"].tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        skipNextCircleButton.tap()
        
        
    }
    
    
}
