.class final Landroid/support/v4/provider/FontsContractCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$request:Landroid/support/v4/provider/FontRequest;

    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$style:I

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$request:Landroid/support/v4/provider/FontRequest;

    iget v2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$style:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;I)Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/support/v4/provider/FontsContractCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->val$id:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/provider/FontsContractCompat$1;->call()Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    move-result-object v0

    return-object v0
.end method
