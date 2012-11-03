
goog.require('lgo')

describe "Grid", -> 

  grid = 0
  beforeEach ->
    grid = new lgo.Grid 10, 10

  it "should be created", ->
    expect(grid).toBeDefined()

  it "should have 10 rows", ->
    expect(grid.grid.length).toBe(10)

  it "should add objects", ->
    expect(grid.add(new lgo.Object()).not.toThrow()
  it "should grant permission to move to a new cell", ->
    expect(grid.canIMoveTo(1,1)).toBe(true)
  it "should refuse permission to move to a new cell", ->
    grid.add(new lgo.Blocker(1,1))
    expect(grid.canIMoveTo(1,1)).toBe(false)

describe "Shape", ->
  threeByThree = 0
  emptyThreeByThree = 0
  beforeEach ->
    threeByThree = new lgo.Shape([[1,1,1],[1,1,1],[1,1,1]])
    emptyThreeByThree = new lgo.Shape([[0,0,0],[0,0,0],[0,0,0]])

  it "should be active"
    expect(threeByThree.amIActiveHere(1,1)).toBe(true)

  it "should not be active"
    expect(emptyThreeByThree.amIActiveHere(1,1)).toBe(false)

describe "Overlay", ->
  overlay = 0

  beforeEach ->
    shape = new lgo.Shape([[1,1],[1,1]])
    overlay = new Overlay(shape, 1,1)
  it "should have a shape", ->
    expect(overlay.shape).not.toBeUndefined()
  it "should have an X position"
    expect(overlay.x).toEqual(1)
  it "should have a Y position", ->
    expect(overlay.y).toEqual(1)
  xit "should have characteristics"
  
describe "Items", ->
  item = 0

          beforeEach ->
    item = new glo.Item(1,1)
  it "should have an x location", ->
    expect(item.x).toEqual(1)
  it "should have an y location", ->
    expect(item.y).toEqual(1)
  it "should be passable"
    grid = new glo.Grid(2,2)
    grid.add(item)
    expect(grid.canIMoveTo(1,1)).toBe(true)
  xit "should be pickupable"
  xit "should have a default shape", -> 

describe "Clones", ->
  it "should be moveable"
  it "should be clonable"
  it "should be activateable"
  it "should be killable"

describe "Blockers", ->
  blocker = 0
  it "should block clones", ->
  

describe "Killers", ->
  it "should kill clones"

describe "CloneMaster", ->
  it "should have clones"
  it "should know the active clone"
  it "should be able to switch active clone"
  it "should have an item tray"

describe "Game", ->
  it "should have a CloneMaster"
  it "should have a Grid"
  it "should have a goal"
  it "should know if the goal is reached"
  it "should know if the goal is unreachable"
