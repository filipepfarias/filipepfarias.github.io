@def title = "The double-slit experiment (Part 1/n)" 
@def date = "23/02/2024" 
@def tags = ["aheui", "manim", "python"]

# {{ title }}
### {{ date }}

*This is supposed to be a long series...*

The double-slit experiment is generally presented on introductory courses on Modern Physics to illustrate the dual (particle/wave) behavior of the photon. Personally it was always presented to me with some sort of *magic* the change in the pattern of inteference when we add an observer (I wish to provide more details about that later) on one of the slits. For many years I accepted the this fact due to the *weirdness* so naturalised about the quantum behavior of the matter [I promise to bring some references on future updates].

Justified my curiosity on why to revisit this well-known result, let me properly introduce the experiment [on future updates 🤷‍♂️].

On a [recent YouTube video from Mithuna Yoganathan](https://youtu.be/Z8Fo2xZjpiE?si=3N6KsD6xVihjj5Wu) some perspectives over the classical behavior of the photon provoked on me some questions about the interaction of the classical electromagnetic wave with the screen where the measurements of the photon occur. It kinda seems that although the electromagnetic wave (EMW) irradiate over all the screen, the transference of energy to the electrons could happen only in discrete values (as stated by Planck). For example, if we could emit an EMW corresponding to a single photon sufficient to eject a single electron from the screen, such event (the electron ejection) could only happen at one place assumed energy conservation.

Nothing so espectacular so far, but to have a deeper understanding of this behavior I decided to simulate the experiment, but also considering the thermal fluctuations present on the screen.

Below some questions I plan to answer:
 - How is the experiment done and is it possible to reproduce it on a computer simulation?
 - If it is possible, then is it possible to introduce the thermal fluctuations of the screen?