.class public Lc/c/a/b/t/c$c;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lc/c/a/b/t/c;",
        "Lc/c/a/b/t/c$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/c/a/b/t/c;",
            "Lc/c/a/b/t/c$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/b/t/c$c;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lc/c/a/b/t/c$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/b/t/c$c;->a:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lc/c/a/b/t/c$e;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc/c/a/b/t/c;

    .line 1
    invoke-interface {p1}, Lc/c/a/b/t/c;->getRevealInfo()Lc/c/a/b/t/c$e;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lc/c/a/b/t/c;

    check-cast p2, Lc/c/a/b/t/c$e;

    .line 1
    invoke-interface {p1, p2}, Lc/c/a/b/t/c;->setRevealInfo(Lc/c/a/b/t/c$e;)V

    return-void
.end method
