.class synthetic Landroid/support/v4/content/ModernAsyncTask$4;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask$Status;->values()[Landroid/support/v4/content/ModernAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$androidx$loader$content$ModernAsyncTask$Status:[I

    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v1}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
