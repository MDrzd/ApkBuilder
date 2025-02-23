.class final enum Lcom/google/common/cache/LocalCache$NullEntry;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/cache/LocalCache$ReferenceEntry;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/LocalCache$NullEntry;

.field public static final enum INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/cache/LocalCache$NullEntry;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/LocalCache$NullEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/cache/LocalCache$NullEntry;

    sget-object v1, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->$VALUES:[Lcom/google/common/cache/LocalCache$NullEntry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$NullEntry;
    .registers 2

    const-class v0, Lcom/google/common/cache/LocalCache$NullEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/LocalCache$NullEntry;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$NullEntry;
    .registers 1

    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->$VALUES:[Lcom/google/common/cache/LocalCache$NullEntry;

    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$NullEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getHash()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 1

    return-object p0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 1

    return-object p0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 1

    return-object p0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 1

    return-object p0
.end method

.method public final getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .registers 3

    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2

    return-void
.end method

.method public final setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 2

    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3

    return-void
.end method
