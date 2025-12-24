.class public final Lc/c/b/h/c0/a/s0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/c/a/a/c/k/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$g<",
            "Lc/c/b/h/c0/a/l0;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "Lc/c/b/h/c0/a/l0;",
            "Lc/c/b/h/c0/a/t0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/c/a/a/c/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a<",
            "Lc/c/b/h/c0/a/t0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/c/a/a/c/k/a$g;

    invoke-direct {v0}, Lc/c/a/a/c/k/a$g;-><init>()V

    sput-object v0, Lc/c/b/h/c0/a/s0;->a:Lc/c/a/a/c/k/a$g;

    new-instance v0, Lc/c/b/h/c0/a/r0;

    invoke-direct {v0}, Lc/c/b/h/c0/a/r0;-><init>()V

    sput-object v0, Lc/c/b/h/c0/a/s0;->b:Lc/c/a/a/c/k/a$a;

    new-instance v1, Lc/c/a/a/c/k/a;

    sget-object v2, Lc/c/b/h/c0/a/s0;->a:Lc/c/a/a/c/k/a$g;

    const-string v3, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    invoke-direct {v1, v3, v0, v2}, Lc/c/a/a/c/k/a;-><init>(Ljava/lang/String;Lc/c/a/a/c/k/a$a;Lc/c/a/a/c/k/a$g;)V

    sput-object v1, Lc/c/b/h/c0/a/s0;->c:Lc/c/a/a/c/k/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lc/c/b/h/c0/a/t0;)Lc/c/b/h/c0/a/g;
    .locals 1

    new-instance v0, Lc/c/b/h/c0/a/g;

    invoke-direct {v0, p0, p1}, Lc/c/b/h/c0/a/g;-><init>(Landroid/content/Context;Lc/c/b/h/c0/a/t0;)V

    return-object v0
.end method
