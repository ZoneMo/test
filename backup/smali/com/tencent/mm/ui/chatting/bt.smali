.class final Lcom/tencent/mm/ui/chatting/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/bw;


# instance fields
.field private cnW:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gJU:Z

.field private gMg:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bt;->context:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/bt;->gMg:Ljava/util/List;

    .line 162
    iput-boolean p3, p0, Lcom/tencent/mm/ui/chatting/bt;->gJU:Z

    .line 163
    iput-object p4, p0, Lcom/tencent/mm/ui/chatting/bt;->cnW:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bt;->gMg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 170
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/bt;->context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/bt;->gJU:Z

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/bt;->cnW:Ljava/lang/String;

    invoke-static {v2, v0, v3, v4}, Lcom/tencent/mm/ui/chatting/bm;->a(Landroid/content/Context;Lcom/tencent/mm/storage/ak;ZLjava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final vf()Z
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/tencent/mm/ui/chatting/bm;->aJa()Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/tencent/mm/ui/chatting/bm;->aJa()Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bt;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/bt;->context:Landroid/content/Context;

    const v2, 0x7f070224

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 185
    const/4 v0, 0x1

    return v0
.end method
