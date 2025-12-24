.class public Lc/c/b/h/g0;
.super Lc/c/b/h/v;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/g0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lc/c/a/a/f/c/n1;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/f0;

    invoke-direct {v0}, Lc/c/b/h/f0;-><init>()V

    sput-object v0, Lc/c/b/h/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/n1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/c/b/h/v;-><init>()V

    iput-object p1, p0, Lc/c/b/h/g0;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/g0;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/c/b/h/g0;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/b/h/g0;->e:Lc/c/a/a/f/c/n1;

    iput-object p5, p0, Lc/c/b/h/g0;->f:Ljava/lang/String;

    iput-object p6, p0, Lc/c/b/h/g0;->g:Ljava/lang/String;

    iput-object p7, p0, Lc/c/b/h/g0;->h:Ljava/lang/String;

    return-void
.end method

.method public static i(Lc/c/a/a/f/c/n1;)Lc/c/b/h/g0;
    .locals 9

    const-string v0, "Must specify a non-null webSignInCredential"

    invoke-static {p0, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/c/b/h/g0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lc/c/b/h/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/n1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final h()Lc/c/b/h/b;
    .locals 9

    new-instance v8, Lc/c/b/h/g0;

    iget-object v1, p0, Lc/c/b/h/g0;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/c/b/h/g0;->c:Ljava/lang/String;

    iget-object v3, p0, Lc/c/b/h/g0;->d:Ljava/lang/String;

    iget-object v4, p0, Lc/c/b/h/g0;->e:Lc/c/a/a/f/c/n1;

    iget-object v5, p0, Lc/c/b/h/g0;->f:Ljava/lang/String;

    iget-object v6, p0, Lc/c/b/h/g0;->g:Ljava/lang/String;

    iget-object v7, p0, Lc/c/b/h/g0;->h:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lc/c/b/h/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/a/a/f/c/n1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1
    iget-object v1, p0, Lc/c/b/h/g0;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lc/c/b/h/g0;->c:Ljava/lang/String;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Lc/c/b/h/g0;->d:Ljava/lang/String;

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/b/h/g0;->e:Lc/c/a/a/f/c/n1;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lc/c/b/h/g0;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    iget-object p2, p0, Lc/c/b/h/g0;->g:Ljava/lang/String;

    const/4 v1, 0x6

    .line 8
    invoke-static {p1, v1, p2, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lc/c/b/h/g0;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
