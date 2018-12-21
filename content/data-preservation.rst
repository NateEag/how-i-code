Data Preservation
=================

:date: 2013-01-01
:category: data modeling
:summary: "I met a traveler from an antique land..."

Computers cannot preserve data.

They are unparalleled tools for manipulating data, and that two-edged sword
is the heart of their downfall as archival tools. Computation is the mutation
of data, the antithesis of archiving data.

Computers can interact with data on secondary storage systems, which could
theoretically store data immutably. However, the most commonly used storage
media are mutable, so programs can alter archived data, accidentally or
intentionally.

If the data are mutated maliciously, there is no way for a future viewer to
know that.

Most digital data can be modified without leaving any trace of
interference, making digital archives untrustworthy. Bytes are bytes. You
cannot tell what bytes preceded them on the medium, even with
`an electron microscope`_.

On retrieving a new dataset, you could generate a cryptographic signature,
which you could use to check whether it has changed the next time you retrieve
it. However, such a signature is useless on first viewing the archived data. A
signature and public key stored with the dataset can be trivially forged, but a
signature and public key stored elsewhere will not be available for the user to
verify.

Digital secondary storage is not vulnerable solely to computational mutation.
The most common storage media can fail in a `handful of years`_, or `just a few
months`_.

Even `theoretically-immutable media`_ can `degrade and fail`_ quickly. Although
there are variations `meant to last a millennium`_, they are only a few years
old. No digital storage system has existed for more than a few decades, and we
do not know how long any of them will last.

When digital media fail, it tends to be catastrophic. Even a small malfunction
or scratch can render the stored data unreadable, requiring `expensive
experts`_ to repair the damage.

Of course, the passage of a few centuries can render digital data unreadable
even if the storage medium is in perfect condition. The archive's discoverer
may not have a computer. If they do, they are still unlikely to be able to
read the stored data. Bytes are still bytes, and meaning is in the eye of the
beholder. A digital archive is just a set of ones and zeroes that could be
interpreted an infinite number of ways.

What custom hardware is needed to read the medium? Is there a working instance
of the hardware? If not, are there blueprints for building one? Are there still
extant drivers for this ancient device, and do they work on current operating
systems? What filesystem was used on the storage medium? How are the data in a
given file structured? Even if a file's contents are just "text", how is that
text encoded? EBCDIC? ASCII? UTF-8? UTF-32?

In stark contrast, ink and paper have been used to preserve data reliably for
centuries, while papyrus and scrolls have lasted for millennia.

Updating a book's contents with new information is very difficult, and for all
but subtle forgeries, any layperson can see the changes - a brand-new page in a
volume otherwise yellowed with age, or whited-out text with re-printed ink.

The written word's failure modes are forgiving and comprehensible, and recovery of
`intentionally-destroyed data is often feasible`_. A page can be dropped,
written over, torn, or even immersed in liquid, and still be readable.

.. TODO Mention engraved stone, metals, and ceramics as options.

Little technology is needed to read writing - just eyesight and knowledge of
the language. Even when the language is long-dead and a mystery, `it may be
rediscovered`_.

The pen is mightier than the program, and the `digital age will vanish like
dust on the wind`_.


.. _handful of years: https://www.backblaze.com/hard-drive-test-data.html
.. _just a few months: http://www.dell.com/downloads/global/products/pvaul/en/Solid-State-Drive-FAQ-us.pdf
.. _an electron microscope: http://security.stackexchange.com/questions/26132/is-data-remanence-a-myth
.. _theoretically-immutable media: https://en.wikipedia.org/wiki/CD-R#Lifespan
.. _degrade and fail: https://en.wikipedia.org/wiki/DVD#Longevity
.. _meant to last a millennium: http://www.mdisc.com/
.. _expensive experts: http://www.drivesaversdatarecovery.com/
.. _intentionally-destroyed data is often feasible: https://en.wikipedia.org/wiki/Palimpsest#Modern_decipherment
.. _it may be rediscovered: https://en.wikipedia.org/wiki/Rosetta_Stone#Hieroglyphic_text
.. _digital age will vanish like dust on the wind: https://partners.nytimes.com/library/magazine/millennium/m6/capsule-panel.html
