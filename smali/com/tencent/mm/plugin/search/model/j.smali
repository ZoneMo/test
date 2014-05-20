.class final Lcom/tencent/mm/plugin/search/model/j;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehb:I

.field private ehc:I


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 800
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 802
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/j;->ehb:I

    .line 803
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/j;->ehc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/plugin/search/model/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/search/model/j;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 807
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 810
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->aaV()Landroid/database/Cursor;

    move-result-object v0

    .line 811
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 812
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 817
    const-string v0, "SELECT chatroomname, memberlist FROM chatroom;"

    .line 818
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v4}, Lcom/tencent/mm/plugin/search/model/b;->c(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/ap/i;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move v0, v1

    .line 821
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 823
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 824
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 825
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 826
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 829
    :cond_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 830
    sget-object v6, Lcom/tencent/mm/plugin/search/model/a;->egG:Ljava/util/regex/Pattern;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 834
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 838
    if-lt v0, v1, :cond_3

    .line 839
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 840
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v0, v2

    .line 845
    :cond_3
    iget-object v7, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v7}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/tencent/mm/plugin/search/model/ap;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 846
    add-int/lit8 v0, v0, 0x1

    .line 847
    iget v5, p0, Lcom/tencent/mm/plugin/search/model/j;->ehb:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tencent/mm/plugin/search/model/j;->ehb:I

    goto :goto_1

    .line 849
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 850
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 854
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 857
    if-lt v3, v1, :cond_5

    .line 858
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 859
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v3}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v3, v2

    .line 863
    :cond_5
    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v5}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/search/model/ap;->mI(Ljava/lang/String;)V

    .line 864
    add-int/lit8 v0, v3, 0x1

    .line 865
    iget v3, p0, Lcom/tencent/mm/plugin/search/model/j;->ehc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/mm/plugin/search/model/j;->ehc:I

    move v3, v0

    .line 866
    goto :goto_2

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/j;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 869
    return v8
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuildChatroomIndex [new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/j;->ehb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/j;->ehc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
