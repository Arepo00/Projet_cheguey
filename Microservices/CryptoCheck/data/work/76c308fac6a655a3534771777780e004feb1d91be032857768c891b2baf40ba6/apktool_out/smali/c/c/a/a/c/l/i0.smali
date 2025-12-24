.class public final Lc/c/a/a/c/l/i0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/Object;

.field public static b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field public static c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c/a/a/c/l/i0;->a:Ljava/lang/Object;

    return-void
.end method
