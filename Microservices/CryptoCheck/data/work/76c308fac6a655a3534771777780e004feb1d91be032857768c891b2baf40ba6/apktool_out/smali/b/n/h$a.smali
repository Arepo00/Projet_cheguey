.class public Lb/n/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/n/d$b;

.field public b:Lb/n/e;


# direct methods
.method public constructor <init>(Lb/n/f;Lb/n/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/n/j;->d(Ljava/lang/Object;)Lb/n/e;

    move-result-object p1

    iput-object p1, p0, Lb/n/h$a;->b:Lb/n/e;

    iput-object p2, p0, Lb/n/h$a;->a:Lb/n/d$b;

    return-void
.end method


# virtual methods
.method public a(Lb/n/g;Lb/n/d$a;)V
    .locals 2

    invoke-static {p2}, Lb/n/h;->c(Lb/n/d$a;)Lb/n/d$b;

    move-result-object v0

    iget-object v1, p0, Lb/n/h$a;->a:Lb/n/d$b;

    invoke-static {v1, v0}, Lb/n/h;->e(Lb/n/d$b;Lb/n/d$b;)Lb/n/d$b;

    move-result-object v1

    iput-object v1, p0, Lb/n/h$a;->a:Lb/n/d$b;

    iget-object v1, p0, Lb/n/h$a;->b:Lb/n/e;

    invoke-interface {v1, p1, p2}, Lb/n/e;->g(Lb/n/g;Lb/n/d$a;)V

    iput-object v0, p0, Lb/n/h$a;->a:Lb/n/d$b;

    return-void
.end method
