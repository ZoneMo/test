.class public final Lcom/tencent/mm/pluginsdk/ui/tools/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:I

.field private final fxc:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/u;->count:I

    .line 223
    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/u;->fxc:I

    .line 224
    return-void
.end method


# virtual methods
.method public final avm()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/u;->fxc:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/u;->count:I

    return v0
.end method
