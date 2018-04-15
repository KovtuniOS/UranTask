# UranTask

Technical task:
Develop an application which displays information about objects at
the exhibitions. The application consists of one screen, where a table
(UITableView) is located, each cell of which is intended for displaying 1
object. Because the object can have several photographs, it is
necessary to provide the possibility of changing them by using a
horizontal scroll (UICollectionView). Display the object's name on top of
each photo.

Requirements for implementation:
• The programming language is Swift
• The project should consist of 3 parts:
1. The Model framework must contain only interfaces and data classes:
- The Exhibit class, which contains two fields: title and images
- The IExhibitsLoader protocol, which contains one method:
getExhibitList (handler: (Exhibit) -> Void);
2. The FileExhibitsLoader framework, which contains only the
implementation of the IExhibitsLoader interface by retrieving data from a
JSON file (https://goo.gl/t1qKMS);
3. An application that receives the data from the framework and
performs its displaying according to the technical task.
