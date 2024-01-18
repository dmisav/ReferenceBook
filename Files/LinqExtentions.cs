namespace DefaultNamespace;

public class LinqExtentions
{
 
 /*Where: Filters a sequence based on a predicate.*/
var filtered = collection.Where(item => item.Property == value);

/*Select: Projects each element of a sequence into a new form.*/
var projected = collection.Select(item => new { item.Property1, item.Property2 });

/*OrderBy / OrderByDescending: Sorts the elements of a sequence in ascending or descending order.*/
var sortedAsc = collection.OrderBy(item => item.Property);
var sortedDesc = collection.OrderByDescending(item => item.Property);

/*GroupBy: Groups the elements of a sequence according to a specified key selector function.*/
var grouped = collection.GroupBy(item => item.Property);

/*FirstOrDefault / SingleOrDefault: Returns the first or single element of a sequence, or a default value if no element is found.*/
var firstItem = collection.FirstOrDefault(item => item.Property == value);
var singleItem = collection.SingleOrDefault(item => item.Property == value);

/*Any: Determines whether any element of a sequence satisfies a condition.*/
bool hasItems = collection.Any(item => item.Property == value);

/*All: Determines whether all elements of a sequence satisfy a condition.*/
bool allMatch = collection.All(item => item.Property > value);
/*Count: Counts the elements in a sequence, optionally applying a predicate.*/
int count = collection.Count(item => item.Property > value);

/*Sum / Max / Min / Average: Computes the sum, maximum, minimum, or average of a sequence of numeric values.*/
var sum = collection.Sum(item => item.NumericProperty);
var max = collection.Max(item => item.NumericProperty);

/*SelectMany: Projects each element of a sequence to an IEnumerable<T> and flattens the resulting sequences into one sequence.*/
var combined = collection.SelectMany(item => item.SubCollection);

/*Join: Correlates the elements of two sequences based on matching keys.*/
var joined = collection1.Join(collection2,
                              item1 => item1.Key,
                              item2 => item2.Key,
                              (item1, item2) => new { item1, item2 });
}