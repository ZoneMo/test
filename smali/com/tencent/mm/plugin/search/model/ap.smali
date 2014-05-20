.class public final Lcom/tencent/mm/plugin/search/model/ap;
.super Lcom/tencent/mm/sdk/e/ai;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/ai;-><init>()V

    .line 168
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "IndexMicroMsg.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->close()V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteDatabase$CursorFactory;)Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-static {}, Lcom/tencent/mm/compatible/c/s;->pU()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sd()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/f;->i([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->initFts(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;[B)I

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v1, "PRAGMA journal_mode=WAL;"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v1, "PRAGMA synchronous=NORMAL;"

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->av(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS IndexContent;"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS IndexMeta;"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "IndexContent"

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE VIRTUAL TABLE IndexContent USING fts4(content, tokenize=mm, compress=mmenc, uncompress=mmdec);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS IndexMeta (docid INTEGER PRIMARY KEY, type INT, subtype INT DEFAULT 0, entity_id INTEGER, aux_index TEXT, timestamp INTEGER, status INT DEFAULT 0);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS IndexMeta_typeId ON IndexMeta(type, entity_id);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS IndexMeta_aux ON IndexMeta(aux_index);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS IndexVersion (type INTEGER PRIMARY KEY, version INTEGER);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS ContactTopHits (query TEXT COLLATE NOCASE, type INT, entity_id INTEGER, score INT);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS ContactTopHits_query ON ContactTopHits(query);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS ContactTopHits_typeId ON ContactTopHits(type, entity_id);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS ContactTopHits_score ON ContactTopHits(score);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE TABLE IF NOT EXISTS ChatRoomMembers (chatroom TEXT, member TEXT);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS ChatRoomMembers_chatroom ON ChatRoomMembers(chatroom);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "CREATE INDEX IF NOT EXISTS ChatRoomMembers_member ON ChatRoomMembers(member);"

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->aw(II)V
    :try_end_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_3
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->close()V

    .line 173
    iput-object v4, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    .line 176
    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v2, "IndexMicroMsg.db"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 177
    new-instance v1, Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException;

    const-string v2, "Database corruption detected, reboot and rebuild completely."

    invoke-direct {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabaseCorruptException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    throw v1
.end method

.method public static a(Ljava/util/Map;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    .line 691
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    .line 693
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 694
    if-nez v0, :cond_1

    move v1, v2

    .line 696
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 697
    if-nez v0, :cond_2

    .line 699
    :goto_2
    sub-int v0, v1, v2

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 697
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2
.end method

.method public static a([III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 685
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 686
    :cond_0
    array-length v0, p0

    if-lt p1, v0, :cond_1

    move v0, v1

    .line 687
    :goto_1
    array-length v2, p0

    if-lt p2, v2, :cond_2

    .line 688
    :goto_2
    sub-int/2addr v0, v1

    goto :goto_0

    .line 686
    :cond_1
    aget v0, p0, p1

    goto :goto_1

    .line 687
    :cond_2
    aget v1, p0, p2

    goto :goto_2
.end method

.method private static a(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 676
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type=\'table\' AND name=?;"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 679
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 680
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[I)Landroid/database/Cursor;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    const-string v1, ""

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT query, type, entity_id, score FROM ContactTopHits WHERE query LIKE ? AND type IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ORDER BY score DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a([IZZZZZ)Landroid/database/Cursor;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 304
    invoke-static {}, Lcom/tencent/mm/ap/c;->aDv()Landroid/database/Cursor;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 307
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 308
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ap/c;->aDv()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    if-eqz p2, :cond_3

    const-string v1, "docid,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_3
    if-eqz p3, :cond_4

    const-string v1, "entity_id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_4
    if-eqz p4, :cond_5

    const-string v1, "aux_index,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_5
    if-eqz p5, :cond_6

    const-string v1, "timestamp,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_6
    if-eqz p6, :cond_7

    const-string v1, "status,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT DISTINCT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM IndexMeta WHERE type IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;[I)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 281
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 282
    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v4, "*\" "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v2, ", offsets(IndexContent)"

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT type, subtype, entity_id, aux_index, timestamp, content"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM IndexContent, IndexMeta WHERE content MATCH ? AND IndexContent.docid = IndexMeta.docid AND type IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND status >= 0;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v2, v4}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a([ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT docid FROM IndexMeta WHERE aux_index=? AND type IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 414
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE IndexMeta SET status=? WHERE docid IN "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_1
    return-object v1
.end method

.method public final a(IIJLjava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 353
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "INSERT INTO IndexContent (content) VALUES (?);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p8, v3, v4

    invoke-virtual {v1, v2, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "INSERT INTO IndexMeta (docid, type, subtype, entity_id, aux_index, timestamp) VALUES (last_insert_rowid(), ?, ?, ?, ?, ?);"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Linfo/guardianproject/database/sqlcipher/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 367
    :cond_1
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v1, "MicroMsg.SearchStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed inserting index, content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    throw v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 641
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v1

    .line 645
    if-nez v1, :cond_2

    .line 646
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 648
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 649
    aput-object p1, v2, v0

    .line 650
    array-length v3, p2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p2, v0

    .line 651
    const-string v5, "INSERT INTO ChatRoomMembers (chatroom, member) VALUES (?, ?);"

    .line 652
    const/4 v6, 0x1

    aput-object v4, v2, v6

    .line 653
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v4, v5, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_3
    if-nez v1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 659
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public final a([I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 494
    if-nez v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 497
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 498
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM IndexMeta WHERE type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    :goto_0
    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 514
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 516
    :cond_1
    return-void

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DELETE FROM IndexMeta WHERE type IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([IJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 425
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 427
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 428
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND entity_id=?);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND entity_id=?;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 436
    :cond_1
    return-void
.end method

.method public final a([IJJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 441
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->beginTransaction()V

    .line 443
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 444
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND entity_id=? AND timestamp=?);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND entity_id=? AND timestamp=?;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->commit()V

    .line 452
    :cond_1
    return-void
.end method

.method public final aE(J)V
    .locals 4
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 477
    if-nez v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 480
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 481
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v3, "DELETE FROM IndexContent WHERE docid=?;"

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v3, "DELETE FROM IndexMeta WHERE docid=?;"

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 487
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 489
    :cond_1
    return-void
.end method

.method public final aaU()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v1, "INSERT INTO IndexContent(IndexContent) VALUES (\'optimize\');"

    invoke-virtual {v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public final aaV()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 636
    const-string v0, "SELECT DISTINCT chatroom FROM ChatRoomMembers;"

    .line 637
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final av(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 519
    .line 521
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const-string v2, "IndexVersion"

    invoke-static {v0, v2}, Lcom/tencent/mm/plugin/search/model/ap;->a(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT version FROM IndexVersion WHERE type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 524
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 526
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 529
    :goto_1
    if-eq v0, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final aw(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 533
    const-string v0, "INSERT OR REPLACE INTO IndexVersion (type, version) VALUES (?, ?);"

    .line 534
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 556
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v6

    .line 557
    if-nez v6, :cond_0

    .line 558
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 562
    :cond_0
    const-wide/16 v0, 0x0

    .line 563
    const-string v2, "SELECT ROWID FROM ContactTopHits WHERE query=? AND type=? AND entity_id=?;"

    .line 564
    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-array v7, v11, [Ljava/lang/String;

    aput-object p1, v7, v4

    iget v8, p2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-wide v8, p2, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v2, v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 565
    iget-object v5, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-array v7, v11, [Ljava/lang/String;

    aput-object p1, v7, v4

    iget v8, p2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-wide v8, p2, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v2, v7}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 567
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move v2, v3

    .line 571
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 574
    if-eqz v2, :cond_2

    .line 575
    const-string v2, "UPDATE ContactTopHits SET score=score+4 WHERE ROWID=?;"

    .line 576
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v4

    move-object v0, v2

    move-object v1, v5

    .line 581
    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v2, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    const-string v0, "DELETE FROM ContactTopHits WHERE query=? AND score<=1;"

    .line 585
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 586
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v2, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    const-string v0, "UPDATE ContactTopHits SET score=score-1 WHERE query=?;"

    .line 590
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v2, v0, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    if-nez v6, :cond_1

    .line 594
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 595
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 597
    :cond_1
    return-void

    .line 578
    :cond_2
    const-string v0, "INSERT INTO ContactTopHits (query, type, entity_id, score) VALUES (?, ?, ?, 4);"

    .line 579
    new-array v1, v11, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget v2, p2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-wide v7, p2, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public final b([IJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM ContactTopHits WHERE type IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND entity_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1, v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public final b([ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 457
    if-nez v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 460
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 461
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AND aux_index=?);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM IndexMeta WHERE type IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->b([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AND aux_index=?;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 470
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 472
    :cond_1
    return-void
.end method

.method public final beginTransaction()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->beginTransaction()V

    .line 261
    const-string v0, "MicroMsg.SearchStorage"

    const-string v1, "begin transaction"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 241
    const-string v2, "MicroMsg.SearchStorage"

    const-string v3, "close db:%s isopen:%b "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "MicroMsg.SearchStorage"

    const-string v2, "close in trans :%b "

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v4}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->close()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    .line 249
    :cond_2
    return-void
.end method

.method public final commit()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->setTransactionSuccessful()V

    .line 267
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 268
    const-string v0, "MicroMsg.SearchStorage"

    const-string v1, "commit"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ap;->close()V

    .line 254
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 255
    return-void
.end method

.method public final mH(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter

    .prologue
    .line 631
    const-string v0, "SELECT DISTINCT chatroom FROM ChatRoomMembers WHERE member=?;"

    .line 632
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final mI(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 664
    const-string v0, "DELETE FROM ChatRoomMembers WHERE chatroom=?;"

    .line 665
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    return-void
.end method

.method public final rollback()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ap;->eib:Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;->endTransaction()V

    .line 274
    const-string v0, "MicroMsg.SearchStorage"

    const-string v1, "rollback"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
