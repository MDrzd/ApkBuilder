.class final Lcom/google/common/io/CharSource$EmptyCharSource;
.super Lcom/google/common/io/CharSource$CharSequenceCharSource;


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/io/CharSource$EmptyCharSource;

    invoke-direct {v0}, Lcom/google/common/io/CharSource$EmptyCharSource;-><init>()V

    sput-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/io/CharSource$EmptyCharSource;
    .registers 1

    sget-object v0, Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharSource.empty()"

    return-object v0
.end method
