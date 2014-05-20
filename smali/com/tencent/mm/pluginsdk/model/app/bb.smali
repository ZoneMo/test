.class final Lcom/tencent/mm/pluginsdk/model/app/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ah;


# instance fields
.field final synthetic fid:Lcom/tencent/mm/pluginsdk/model/app/ba;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/model/app/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/app/bb;->fid:Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(Ljava/util/LinkedList;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqh()Lcom/tencent/mm/pluginsdk/model/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/m;->Q(Ljava/util/LinkedList;)V

    .line 109
    return-void
.end method

.method public final X(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqg()Lcom/tencent/mm/pluginsdk/model/app/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/pluginsdk/model/app/h;->Y(Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mm/pluginsdk/model/app/o;->a(Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final apw()Lcom/tencent/mm/pluginsdk/model/app/o;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    return-object v0
.end method

.method public final c([I)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/o;->d([I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 99
    return-void
.end method

.method public final g(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/o;->k(Lcom/tencent/mm/pluginsdk/model/app/k;)V

    .line 89
    return-void
.end method

.method public final h(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/o;->l(Lcom/tencent/mm/pluginsdk/model/app/k;)V

    .line 94
    return-void
.end method

.method public final jX(I)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/o;->jZ(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final qf(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/k;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/o;->qo(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    return-object v0
.end method

.method public final qg(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqh()Lcom/tencent/mm/pluginsdk/model/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/model/app/m;->qn(Ljava/lang/String;)V

    .line 79
    return-void
.end method
