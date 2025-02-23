.class public final Landroid/support/v4/os/ParcelableCompat;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ParcelableCompat$ParcelableCompatCreatorHoneycombMR2;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
