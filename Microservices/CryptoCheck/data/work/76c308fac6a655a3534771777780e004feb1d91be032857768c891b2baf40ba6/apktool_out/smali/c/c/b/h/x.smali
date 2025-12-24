.class public abstract Lc/c/b/h/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/c/a/a/c/m/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/a/c/m/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PhoneAuthProvider"

    invoke-direct {v0, v2, v1}, Lc/c/a/a/c/m/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/c/b/h/x;->a:Lc/c/a/a/c/m/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lc/c/b/h/w;)V
.end method

.method public abstract b(Lc/c/b/c;)V
.end method
