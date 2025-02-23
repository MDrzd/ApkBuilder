.class final enum Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "CEILING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    .registers 2

    const-class v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method
