.class abstract enum Lcom/google/common/io/Files$FilePredicate;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_FILE:Lcom/google/common/io/Files$FilePredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/common/io/Files$FilePredicate$1;

    const-string v1, "IS_DIRECTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/Files$FilePredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    new-instance v0, Lcom/google/common/io/Files$FilePredicate$2;

    const-string v1, "IS_FILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/common/io/Files$FilePredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/io/Files$FilePredicate;

    sget-object v1, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/Files$FilePredicate;
    .registers 2

    const-class v0, Lcom/google/common/io/Files$FilePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/Files$FilePredicate;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/Files$FilePredicate;
    .registers 1

    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    invoke-virtual {v0}, [Lcom/google/common/io/Files$FilePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method
