.class final Lcom/tencent/mm/plugin/search/model/w;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehv:Ljava/lang/String;

.field private ehw:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/w;->ehw:I

    .line 883
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/w;->ehv:Ljava/lang/String;

    .line 884
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 888
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 891
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/w;->ehv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->mI(Ljava/lang/String;)V

    .line 894
    const-string v0, "SELECT memberlist FROM chatroom WHERE chatroomname=?"

    .line 895
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->c(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/ap/i;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/w;->ehv:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egG:Ljava/util/regex/Pattern;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 898
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/w;->ehv:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 899
    array-length v1, v1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/w;->ehw:I

    .line 901
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 903
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/w;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 904
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateChatroomIndex(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/w;->ehv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/w;->ehw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
