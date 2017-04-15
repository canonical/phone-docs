---
Title: autopilot.input.Keyboard
---
        
Keyboard
========

 *class* `autopilot.input.``Keyboard`<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard" class="reference internal"></a><a href="#autopilot.input.Keyboard" class="headerlink" title="Permalink to this definition"></a>  
A simple keyboard device class.

The keyboard class is used to generate key events while in an autopilot test. This class should not be instantiated directly. To get an instance of the keyboard class, call <a href="../../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard.create" class="reference internal" title="autopilot.input.Keyboard.create"><code class="xref py py-meth docutils literal">create</code></a> instead.

 *static* `create`(*preferred\_backend=''*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.create" class="reference internal"></a><a href="#autopilot.input.Keyboard.create" class="headerlink" title="Permalink to this definition"></a>  
Get an instance of the <a href="../../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard" class="reference internal" title="autopilot.input.Keyboard"><code class="xref py py-class docutils literal">Keyboard</code></a> class.

For more infomration on picking specific backends, see <a href="../../1.5.0/tutorial-advanced_autopilot.md#tut-picking-backends" class="reference internal"><em>Advanced Backend Picking</em></a>

For details regarding backend limitations please see: <a href="../../1.5.0/tutorial-advanced_autopilot.md#keyboard-backend-limitations" class="reference internal"><em>Keyboard backend limitations</em></a>

Warning

The **OSK** (On Screen Keyboard) backend option does not implement either <a href="../../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard.press" class="reference internal" title="autopilot.input.Keyboard.press"><code class="xref py py-meth docutils literal">press</code></a> or <a href="../../1.5.0/autopilot.input.Keyboard.md#autopilot.input.Keyboard.release" class="reference internal" title="autopilot.input.Keyboard.release"><code class="xref py py-meth docutils literal">release</code></a> methods due to technical implementation details and will raise a NotImplementedError exception if used.

|             |                                                                                                                    |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| Parameters: | **preferred\_backend** –                                                                                           
  A string containing a hint as to which backend you would like. Possible backends are:                               
                                                                                                                      
  -   `X11` - Generate keyboard events using the X11 client                                                           
      libraries.                                                                                                      
                                                                                                                      
  -   `UInput` - Use UInput kernel-level device driver.                                                               
  -   `OSK` - Use the graphical On Screen Keyboard as a backend.                                                      |
| Raises:     | RuntimeError if autopilot cannot instantate any of the possible backends.                                          |
| Raises:     | RuntimeError if the preferred\_backend is specified and is not one of the possible backends for this device class. |
| Raises:     | `BackendException` if the preferred\_backend is set, but that backend could not be instantiated.                   |

 `focused_type`(*input\_target*, *pointer=None*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.focused_type" class="reference internal"></a><a href="#autopilot.input.Keyboard.focused_type" class="headerlink" title="Permalink to this definition"></a>  
Type into an input widget.

This context manager takes care of making sure a particular *input\_target* UI control is selected before any text is entered.

Some backends extend this method to perform cleanup actions at the end of the context manager block. For example, the OSK backend dismisses the keyboard.

If the *pointer* argument is None (default) then either a Mouse or Touch pointer will be created based on the current platform.

An example of using the context manager (with an OSK backend):

    from autopilot.input import Keyboard

    text_area = self._launch_test_input_area()
    keyboard = Keyboard.create('OSK')
    with keyboard.focused_type(text_area) as kb:
        kb.type("Hello World.")
        self.assertThat(text_area.text, Equals("Hello World"))
    # Upon leaving the context managers scope the keyboard is dismissed
    # with a swipe

 `press`(*keys*, *delay=0.2*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.press" class="reference internal"></a><a href="#autopilot.input.Keyboard.press" class="headerlink" title="Permalink to this definition"></a>  
Send key press events only.

|             |                                                                                                        |
|-------------|--------------------------------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want pressed.                                                                  
  -   **delay** – The delay (in Seconds) after pressing the keys before returning control to the caller.  |
| Raises:     | NotImplementedError If called when using the OSK Backend.                                              |

Warning

The **OSK** backend does not implement the press method and will raise a NotImplementedError if called.

Example:

    press('Alt+F2')

presses the ‘Alt’ and ‘F2’ keys, but does not release them.

 `release`(*keys*, *delay=0.2*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.release" class="reference internal"></a><a href="#autopilot.input.Keyboard.release" class="headerlink" title="Permalink to this definition"></a>  
Send key release events only.

|             |                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want released.                                                                  
  -   **delay** – The delay (in Seconds) after releasing the keys before returning control to the caller.  |
| Raises:     | NotImplementedError If called when using the OSK Backend.                                               |

Warning

The **OSK** backend does not implement the press method and will raise a NotImplementedError if called.

Example:

    release('Alt+F2')

releases the ‘Alt’ and ‘F2’ keys.

 `press_and_release`(*keys*, *delay=0.2*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.press_and_release" class="reference internal"></a><a href="#autopilot.input.Keyboard.press_and_release" class="headerlink" title="Permalink to this definition"></a>  
Press and release all items in ‘keys’.

This is the same as calling ‘press(keys);release(keys)’.

|             |                                                                               |
|-------------|-------------------------------------------------------------------------------|
| Parameters: | -   **keys** – Keys you want pressed and released.                            
  -   **delay** – The delay (in Seconds) after pressing and releasing each key.  |

Example:

    press_and_release('Alt+F2')

presses both the ‘Alt’ and ‘F2’ keys, and then releases both keys.

 `type`(*string*, *delay=0.1*)<a href="../../1.5.0/autopilot.input.Keyboard.md#Keyboard.type" class="reference internal"></a><a href="#autopilot.input.Keyboard.type" class="headerlink" title="Permalink to this definition"></a>  
Simulate a user typing a string of text.

|             |                                                                                                                                                                                        |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **string** – The string to text to type.                                                                                                                                           
  -   **delay** – The delay (in Seconds) after pressing and releasing each key. Note that the default value here is shorter than for the press, release and press\_and\_release methods.  |

Note

Only ‘normal’ keys can be typed with this method. Control characters (such as ‘Alt’ will be interpreted as an ‘A’, and ‘l’, and a ‘t’).

 `on_test_end`(*\*args*)<a href="#autopilot.input.Keyboard.on_test_end" class="headerlink" title="Permalink to this definition"></a>  

 `on_test_start`(*\*args*)<a href="#autopilot.input.Keyboard.on_test_start" class="headerlink" title="Permalink to this definition"></a>  

