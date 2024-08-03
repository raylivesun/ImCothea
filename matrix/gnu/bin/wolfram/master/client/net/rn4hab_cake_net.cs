system.Threading.Tasks;

public class Program {
    public static void Main() {
        Task.Run(() => Greet("World"));
        Console.WriteLine("Hello");
    }

    private static async Task Greet(string name) {
        await Task.Delay(1000);
        Console.WriteLine($"Hello, {name}!");
    }
    // Output: Hello
    //         Hello, World!
    //         (After 1 second)
    //         Hello, World!
    
}

