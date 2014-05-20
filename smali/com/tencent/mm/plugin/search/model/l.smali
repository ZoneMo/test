.class final Lcom/tencent/mm/plugin/search/model/l;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehd:I

.field private ehe:I


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 605
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 607
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/l;->ehd:I

    .line 608
    iput v0, p0, Lcom/tencent/mm/plugin/search/model/l;->ehe:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/plugin/search/model/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/search/model/l;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x32

    const/4 v2, 0x0

    .line 612
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 615
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/plugin/search/model/ap;->a([IZZZZZ)Landroid/database/Cursor;

    move-result-object v0

    .line 617
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 619
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 624
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 630
    :cond_1
    const-string v0, "SELECT id, realname, realnamequanpin, realnamepyinitial, nickname, nicknamequanpin, nicknamepyinitial, username, status FROM addr_upload WHERE type=0;"

    .line 634
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->c(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/ap/i;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/ap/i;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v7

    .line 637
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 639
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 640
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 641
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 642
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 646
    :cond_3
    new-instance v4, Lcom/tencent/mm/plugin/search/model/i;

    invoke-direct {v4}, Lcom/tencent/mm/plugin/search/model/i;-><init>()V

    .line 647
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/mm/plugin/search/model/i;->id:J

    .line 648
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->cqh:Ljava/lang/String;

    .line 649
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->egX:Ljava/lang/String;

    .line 650
    const/4 v5, 0x3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->egY:Ljava/lang/String;

    .line 651
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->cie:Ljava/lang/String;

    .line 652
    const/4 v5, 0x5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->egZ:Ljava/lang/String;

    .line 653
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->eha:Ljava/lang/String;

    .line 654
    const/4 v5, 0x7

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/mm/plugin/search/model/i;->bPx:Ljava/lang/String;

    .line 655
    const/16 v5, 0x8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/tencent/mm/plugin/search/model/i;->status:I

    .line 656
    iput v2, v4, Lcom/tencent/mm/plugin/search/model/i;->type:I

    .line 657
    iget v5, v4, Lcom/tencent/mm/plugin/search/model/i;->status:I

    const/high16 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 658
    iput v2, v4, Lcom/tencent/mm/plugin/search/model/i;->status:I

    .line 661
    :cond_4
    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v4}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/i;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 666
    iget-wide v5, v4, Lcom/tencent/mm/plugin/search/model/i;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 670
    if-lt v0, v7, :cond_5

    .line 671
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 672
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v0, v2

    .line 677
    :cond_5
    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v5, v4}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;Lcom/tencent/mm/plugin/search/model/i;)I

    move-result v4

    add-int/2addr v0, v4

    .line 678
    iget v4, p0, Lcom/tencent/mm/plugin/search/model/l;->ehd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/mm/plugin/search/model/l;->ehd:I

    goto/16 :goto_1

    .line 680
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 681
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 685
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v7

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 688
    if-lt v1, v7, :cond_7

    .line 689
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 690
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    move v1, v2

    .line 694
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v8, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    invoke-virtual {v0, v8, v5, v6}, Lcom/tencent/mm/plugin/search/model/ap;->a([IJ)V

    .line 695
    add-int/lit8 v0, v1, 0x1

    .line 696
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/l;->ehe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/l;->ehe:I

    .line 698
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v1

    sget-object v8, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    invoke-virtual {v1, v8, v5, v6}, Lcom/tencent/mm/plugin/search/model/ap;->b([IJ)V

    move v1, v0

    .line 699
    goto :goto_2

    .line 700
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/l;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 702
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuildFriendIndex [new: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/l;->ehd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/search/model/l;->ehe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
