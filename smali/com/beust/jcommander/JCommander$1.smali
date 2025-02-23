.class Lcom/beust/jcommander/JCommander$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/beust/jcommander/JCommander;


# direct methods
.method constructor <init>(Lcom/beust/jcommander/JCommander;)V
    .registers 2

    iput-object p1, p0, Lcom/beust/jcommander/JCommander$1;->this$0:Lcom/beust/jcommander/JCommander;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/beust/jcommander/ParameterDescription;Lcom/beust/jcommander/ParameterDescription;)I
    .registers 3

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getLongestName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/beust/jcommander/ParameterDescription;->getLongestName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/beust/jcommander/ParameterDescription;

    check-cast p2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lcom/beust/jcommander/JCommander$1;->compare(Lcom/beust/jcommander/ParameterDescription;Lcom/beust/jcommander/ParameterDescription;)I

    move-result p1

    return p1
.end method
