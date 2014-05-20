.class final Landroid/support/v4/view/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    check-cast p1, Landroid/support/v4/view/bw;

    check-cast p2, Landroid/support/v4/view/bw;

    iget v0, p1, Landroid/support/v4/view/bw;->position:I

    iget v1, p2, Landroid/support/v4/view/bw;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
