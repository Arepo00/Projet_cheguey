.class public final synthetic Lc/c/b/h/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/i/g;


# static fields
.field public static final a:Lc/c/b/i/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/m0;

    invoke-direct {v0}, Lc/c/b/h/m0;-><init>()V

    sput-object v0, Lc/c/b/h/m0;->a:Lc/c/b/i/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/b/i/a;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lc/c/b/b;

    invoke-virtual {p1, v0}, Lc/c/b/i/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/b/b;

    new-instance v0, Lc/c/b/h/d0/a0;

    invoke-direct {v0, p1}, Lc/c/b/h/d0/a0;-><init>(Lc/c/b/b;)V

    return-object v0
.end method
